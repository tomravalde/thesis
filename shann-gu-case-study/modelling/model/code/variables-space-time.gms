VARIABLES
        cost_prod
        cost_transp
        cost_res
        cost_total
        pareto_var
	MFI_limit
	MFI
	zoneflow_quality(R,Q,Z,T)
	zoneflow_quantity(TT,R,Z,T)
        production_quantity(P,R,Z,T)
	production_quality(R,Q,Z,T)
	num_process(P,Z)
POSITIVE VARIABLES
        imports(R,Z,T)
	exports(R,Z,T)
        rate_process(P,Z,T)
        rate_transp(TT,Z,ZZ,T)
INTEGER VARIABLE
	num_process(P,Z)
BINARY VARIABLES
        binary_import(R,Z)
        binary_export(R,Z)
        binary_transp(TT,Z,ZZ);
