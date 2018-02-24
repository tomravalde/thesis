EQUATIONS
        BALANCE_QUANTITY(R,Z)
	BALANCE_QUALITY(Q,Z) 
        PROCESS_QUALITY(R,Q,Z)
	PROCESS_QUANTITY_PRAQ(P,R,Q,Z)
        MINIMUM_IMPORTS(R,Z)
        MAXIMUM_IMPORTS(R,Z)
	MAXIMUM_ZONES_IMPORT(R)
        MINIMUM_EXPORTS(R,Z)
        MAXIMUM_EXPORTS(R,Z)
	MAXIMUM_ZONES_EXPORT(R)
        MAXIMUM_PROCESS_RATE(P,Z)
*	IMP_EXP(R,Z)
        MAXIMUM_TRANSPORT_RATE(TT,Z,ZZ)
        MINIMUM_TRANSPORT_RATE(TT,Z,ZZ)
	TRANSPORT_BIDIRECTION(TT,Z,ZZ)
	TRANSPORT_QUALITY(R,Q,Z)
	TRANSPORT_QUANTITY_PRAQ(TT,R,Q,Z)
	MFI_VALUE
*	MFI_CONSTRAINT
	COST_PROCESS_PRODUCTION
	COST_PROCESS_TRANSPORT
	COST_IMPORTS
        OBJECTIVE_FUNCTION;

BALANCE_QUANTITY(R,Z)..      
	sum(TT, zoneflow_quantity(TT,R,Z)) +
        imports(R,Z) +
        sum(P, production_quantity(P,R,Z)) =e=
        demand_quantity(R,Z) +
        exports(R,Z);

BALANCE_QUALITY(Q,Z)..
	sum(R,
	zoneflow_quality(R,Q,Z) +
	resource_quality(R,Q) * imports(R,Z) +
	production_quality(R,Q,Z)
	) =e=
	sum(R,
	demand_quality(R,Q,Z) +
	resource_quality(R,Q) * exports(R,Z)
	);

PROCESS_QUANTITY_PRAQ(P,R,Q,Z)$(binary_process(P,R,Q)=1)..
	production_quantity(P,R,Z) * resource_quality(R,Q) =e= coeff_process_praq(P,R,Q)*rate_process(P,Z) * binary_resource(R,Q);
	
PROCESS_QUALITY(R,Q,Z)..   
	production_quality(R,Q,Z) =e= sum(P, coeff_process_praq(P,R,Q) * rate_process(P,Z));

MAXIMUM_PROCESS_RATE(P,Z)..      
	rate_process(P,Z) =l= num_process(P,Z) * rate_process_max(P);

MAXIMUM_TRANSPORT_RATE(TT,Z,ZZ)..
	rate_transp(TT,Z,ZZ) =l= binary_transp(TT,Z,ZZ) * rate_transp_max(TT);

MINIMUM_TRANSPORT_RATE(TT,Z,ZZ)..
	rate_transp(TT,Z,ZZ) =g= binary_transp(TT,Z,ZZ) * rate_transp_min(TT);

TRANSPORT_BIDIRECTION(TT,Z,ZZ)..
	binary_transp(TT,Z,ZZ) =e= binary_transp(TT,ZZ,Z);

* Limit transfers only to neighbouring cells
	binary_transp.FX(TT,Z,ZZ)$(not nb(Z,ZZ)) = 0;

MINIMUM_IMPORTS(R,Z)..   
	binary_import(R,Z) * imports_min(R) =l= imports(R,Z);

MAXIMUM_IMPORTS(R,Z)..	
	imports(R,Z) =l= binary_import(R,Z) * imports_max(R);

MAXIMUM_ZONES_IMPORT(R)..
	sum(Z, binary_import(R,Z)) =l= num_zones_imports(R);

MINIMUM_EXPORTS(R,Z)..   
	binary_export(R,Z) * exports_min(R) =l= exports(R,Z);

MAXIMUM_EXPORTS(R,Z)..	
	exports(R,Z) =l= binary_export(R,Z) * exports_max(R);

MAXIMUM_ZONES_EXPORT(R)..
	sum(Z, binary_export(R,Z)) =l= num_zones_exports(R);

*IMP_EXP(R,Z)..
*	binary_import(R,Z) + binary_export(R,Z) =l= 1;

TRANSPORT_QUANTITY_PRAQ(TT,R,Q,Z)..
	zoneflow_quantity(TT,R,Z) * resource_quality(R,Q) =e= 
	(
	sum(ZZ, (coeff_transp_qty_src_praq(TT,R,Q) + coeff_transp_dist_src_praq(R,Q,TT)*length(Z,ZZ)) * rate_transp(TT,Z,ZZ)) + 
	sum(ZZ, (coeff_transp_qty_dest_praq(TT,R,Q) + coeff_transp_dist_dest_praq(R,Q,TT)*length(ZZ,Z)) * rate_transp(TT,ZZ,Z))
	) * binary_resource(R,Q);

TRANSPORT_QUALITY(R,Q,Z)..
        zoneflow_quality(R,Q,Z) =e=
        sum((TT,ZZ), (coeff_transp_qty_src_praq(TT,R,Q) + coeff_transp_dist_src_praq(R,Q,TT)*length(Z,ZZ)) * rate_transp(TT,Z,ZZ)) + 
	sum((TT,ZZ), (coeff_transp_qty_dest_praq(TT,R,Q) + coeff_transp_dist_dest_praq(R,Q,TT)*length(ZZ,Z)) * rate_transp(TT,ZZ,Z));

MFI_VALUE..
*	GHGs
	MFI =e=  sum((R,Z), imports(R,Z) * emissions_resource(R));
	
*MFI_CONSTRAINT..
*	MFI =l= 1e+14;

* Annual cost, assuming a 10 year lifespan
COST_PROCESS_PRODUCTION..
	cost_prod =e= sum((P,Z), 0.1 * cost_process_cap(P) * num_process(P,Z));
*	cost_prod =e= 0;

COST_IMPORTS..
	cost_res =e= sum((R,Z), cost_resource(R) * imports(R,Z));

OBJECTIVE_FUNCTION..                  
*	cost_total =e= cost_prod + cost_transp + cost_res;
	cost_total =e= cost_prod + cost_res;

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
