EQUATIONS
        BALANCE_QUANTITY(R,Z,T)
	BALANCE_QUALITY(Q,Z,T) 
        PROCESS_QUALITY(R,Q,Z,T)
	PROCESS_QUANTITY_PRAQ(P,R,Q,Z,T)
        MINIMUM_IMPORTS(R,Z,T)
        MAXIMUM_IMPORTS(R,Z,T)
	MAXIMUM_ZONES_IMPORT(R)
        MINIMUM_EXPORTS(R,Z,T)
        MAXIMUM_EXPORTS(R,Z,T)
	MAXIMUM_ZONES_EXPORT(R)
        MAXIMUM_PROCESS_RATE(P,Z,T)
*	IMP_EXP(R,Z)
        MAXIMUM_TRANSPORT_RATE(TT,Z,ZZ,T)
        MINIMUM_TRANSPORT_RATE(TT,Z,ZZ,T)
	TRANSPORT_BIDIRECTION(TT,Z,ZZ)
	TRANSPORT_QUALITY(R,Q,Z,T)
	TRANSPORT_QUANTITY_PRAQ(TT,R,Q,Z,T)
*	MFI_VALUE
*	MFI_CONSTRAINT
	COST_PROCESS_PRODUCTION
	COST_PROCESS_TRANSPORT
	COST_IMPORTS
        PARETO_CONDITION
        PARETO_VARIABLE
        OBJECTIVE_FUNCTION;

BALANCE_QUANTITY(R,Z,T)..      
	sum(TT, zoneflow_quantity(TT,R,Z,T)) +
        imports(R,Z,T) +
        sum(P, production_quantity(P,R,Z,T)) =e=
        demand_quantity(R,T,Z) +
        exports(R,Z,T);

BALANCE_QUALITY(Q,Z,T)..
	sum(R,
	zoneflow_quality(R,Q,Z,T) +
	resource_quality(R,Q) * imports(R,Z,T) +
	production_quality(R,Q,Z,T)
	) =e=
	sum(R,
	demand_quality(R,Q,T,Z) +
	resource_quality(R,Q) * exports(R,Z,T)
	);

PROCESS_QUANTITY_PRAQ(P,R,Q,Z,T)$(binary_process(P,R,Q)=1)..
	production_quantity(P,R,Z,T) * resource_quality(R,Q) =e= coeff_process_praq(P,R,Q)*rate_process(P,Z,T) * binary_resource(R,Q);

PROCESS_QUALITY(R,Q,Z,T)..   
	production_quality(R,Q,Z,T) =e= sum(P, coeff_process_praq(P,R,Q) * rate_process(P,Z,T));

MAXIMUM_PROCESS_RATE(P,Z,T)..      
	rate_process(P,Z,T) =l= num_process(P,Z) * rate_process_max(P,T);

MAXIMUM_TRANSPORT_RATE(TT,Z,ZZ,T)..
	rate_transp(TT,Z,ZZ,T) =l= binary_transp(TT,Z,ZZ) * rate_transp_max(TT,T);

MINIMUM_TRANSPORT_RATE(TT,Z,ZZ,T)..
	rate_transp(TT,Z,ZZ,T) =g= binary_transp(TT,Z,ZZ) * rate_transp_min(TT,T);

TRANSPORT_BIDIRECTION(TT,Z,ZZ)..
	binary_transp(TT,Z,ZZ) =e= binary_transp(TT,ZZ,Z);

* Limit transfers only to neighbouring cells
	binary_transp.FX(TT,Z,ZZ)$(not nb(Z,ZZ)) = 0;

MINIMUM_IMPORTS(R,Z,T)..   
	binary_import(R,Z) * imports_min(R,T) =l= imports(R,Z,T);

MAXIMUM_IMPORTS(R,Z,T)..	
	imports(R,Z,T) =l= binary_import(R,Z) * imports_max(R,T);

MAXIMUM_ZONES_IMPORT(R)..
	sum(Z, binary_import(R,Z)) =l= num_zones_imports(R);

MINIMUM_EXPORTS(R,Z,T)..   
	binary_export(R,Z) * exports_min(R,T) =l= exports(R,Z,T);

MAXIMUM_EXPORTS(R,Z,T)..	
	exports(R,Z,T) =l= binary_export(R,Z) * exports_max(R,T);

MAXIMUM_ZONES_EXPORT(R)..
	sum(Z, binary_export(R,Z)) =l= num_zones_exports(R);

*IMP_EXP(R,Z)..
*	binary_import(R,Z) + binary_export(R,Z) =l= 1;

TRANSPORT_QUANTITY_PRAQ(TT,R,Q,Z,T)$(binary_transport(TT,R,Q)=1)..
	zoneflow_quantity(TT,R,Z,T) * resource_quality(R,Q) =e= 
	(
	sum(ZZ, (coeff_transp_qty_src_praq(TT,R,Q) + coeff_transp_dist_src_praq(R,Q,TT)*length(Z,ZZ)) * rate_transp(TT,Z,ZZ,T)) + 
	sum(ZZ, (coeff_transp_qty_dest_praq(TT,R,Q) + coeff_transp_dist_dest_praq(R,Q,TT)*length(ZZ,Z)) * rate_transp(TT,ZZ,Z,T))
	) * binary_resource(R,Q);

TRANSPORT_QUALITY(R,Q,Z,T)..
        zoneflow_quality(R,Q,Z,T) =e=
        sum((TT,ZZ), (coeff_transp_qty_src_praq(TT,R,Q) + coeff_transp_dist_src_praq(R,Q,TT)*length(Z,ZZ)) * rate_transp(TT,Z,ZZ,T)) + 
	sum((TT,ZZ), (coeff_transp_qty_dest_praq(TT,R,Q) + coeff_transp_dist_dest_praq(R,Q,TT)*length(ZZ,Z)) * rate_transp(TT,ZZ,Z,T));

*MFI_VALUE..
**	GHGs
*	MFI =e=  sum((R,Z,T), imports(R,Z,T) * emissions_resource(R));
	
*MFI_CONSTRAINT..
*	MFI =l= 1e+2;

* Annual cost, assuming a 10 year lifespan
COST_PROCESS_PRODUCTION..
	cost_prod =e= sum((P,Z), cost_process_cap(P) * num_process(P,Z));
*	cost_prod =e= 0;

COST_PROCESS_TRANSPORT..
*	cost_transp =e= sum((TT,Z,ZZ), cost_transp_cap(TT) * binary_transp(TT,Z,ZZ));
	cost_transp =e= sum((TT,Z,ZZ), cost_transp_cap(TT) * binary_transp(TT,Z,ZZ) * length(Z,ZZ));

PARETO_CONDITION..
	pareto_var =l= pareto_lim;

COST_IMPORTS..
	cost_res =e= sum((R,Z,T), cost_resource(R) * imports(R,Z,T) * span(T));
*	cost_res =e= sum((R,Z,T), cost_resource(R) * imports(R,Z,T));
*	cost_res =e= sum((R,Z,T), cost_resource(R) * imports(R,Z,T) * 365 * 24 * 3600);
*	cost_res =e= sum((R,Z,T), cost_resource(R) * imports(R,Z,T) * span(T));
*	cost_res =e= sum((R,Z,T), cost_resource(R) * imports(R,Z,T) * 20 * 365 * 24 * 3600);

*PARETO_CONDITION..
*        sum((R,Z,T), cost_resource(R) * imports(R,Z,T) * span(T)) =l= 1e14;
*        cost_res =l= 1.4e9;

*OBJECTIVE_FUNCTION..                  
*	cost_total =e= cost_res;
*	cost_total =e= 0.1 * cost_prod + 0.1 * cost_transp + cost_res;
*	cost_total =e= cost_prod + cost_res;
*	cost_total =e= cost_prod + cost_transp;

*	cost_total =e=	sum((Z,R,T), cost_resource(R) * imports(R,Z,T)) +
*			sum((P,Z), 0.05 * cost_process_cap(P) * num_process(P,Z)) +
**			sum((P,Z), cost_process_maint(P) * num_process(P,Z)) +
**			sum((P,Z,T), cost_process_op(P) * rate_process(P,Z,T)) +
**			sum((TT,Z,ZZ,T), cost_transp_cap(TT) * length(Z,ZZ) * rate_transp(TT,Z,ZZ,T) * span(T) * 20);
**			sum((TT,Z,ZZ,T), cost_transp_cap(TT) * length(Z,ZZ) * rate_transp(TT,Z,ZZ,T));
*			sum((TT,Z,ZZ), 0.05 * binary_transp(TT,Z,ZZ) * cost_transp_cap(TT) * length(Z,ZZ) * 0.5);

* cost resource imports ($/kg or $/MJ)
* cost process
*	capital ($)
*	maintainance ($)
*	operation ($/rate) where rate = X/day
* cost transport process 
*	capital ($/km)
* 	maintainance ($/km)
* 	operation ($/km/rate)
PARETO_VARIABLE..
pareto_var =e= sum(Z, exports('gasNatural',Z,'wint'));
OBJECTIVE_FUNCTION..
cost_total =e= 0.1 * cost_prod + 0.1 * cost_transp + cost_res;
