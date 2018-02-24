VARIABLES
        cost_prod
        cost_res
        cost_total
	MFI_limit
	MFI
	zoneflow_quality(R,Q,Z)
	zoneflow_quantity(TT,R,Z)
        production_quantity(P,R,Z)
	production_quality(R,Q,Z)
	num_process(P,Z)
POSITIVE VARIABLES
        imports(R,Z)
	exports(R,Z)
        rate_process(P,Z)
        rate_transp(TT,Z,ZZ)
INTEGER VARIABLE
	num_process(P,Z)
BINARY VARIABLES
        binary_import(R,Z)
        binary_export(R,Z)
        binary_transp(TT,Z,ZZ);
