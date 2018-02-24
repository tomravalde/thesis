Model PRAQ
	/
        BALANCE_QUANTITY,
	BALANCE_QUALITY,
        PROCESS_QUALITY,
	PROCESS_QUANTITY_PRAQ,
        MINIMUM_IMPORTS,
        MAXIMUM_IMPORTS,
        MAXIMUM_ZONES_IMPORT,
        MINIMUM_EXPORTS,
        MAXIMUM_EXPORTS,
*        MAXIMUM_ZONES_EXPORT,
*	IMP_EXP
        MAXIMUM_PROCESS_RATE,
	MAXIMUM_TRANSPORT_RATE,
	MINIMUM_TRANSPORT_RATE,
	TRANSPORT_BIDIRECTION,
	TRANSPORT_QUALITY,
	TRANSPORT_QUANTITY_PRAQ
*	MFI_VALUE,
*	MFI_CONSTRAINT,
	COST_PROCESS_PRODUCTION,
	COST_PROCESS_TRANSPORT,
	COST_IMPORTS,
        PARETO_VARIABLE,
        PARETO_CONDITION,
        OBJECTIVE_FUNCTION
		/;

num_process.up(P,Z) = max_num(P);


solve PRAQ min cost_total using mip;
* BEWARE: In the case of infeasible OF, the previous correct result will be printed!

DISPLAY production_quantity.L
DISPLAY production_quality.L
DISPLAY zoneflow_quantity.L
DISPLAY zoneflow_quality.L
DISPLAY binary_transp.L
DISPLAY exports.L
DISPLAY imports.L
DISPLAY binary_import.L
DISPLAY binary_export.L
DISPLAY rate_process.L
DISPLAY rate_transp.L
DISPLAY num_process.L
DISPLAY cost_prod.L
DISPLAY cost_transp.L
DISPLAY cost_res.L
DISPLAY cost_total.L
DISPLAY pareto_var.L
*DISPLAY MFI.L

** OUTPUT RESULTS TO CSV
file Headlines /"headlines.csv"/;
put Headlines; Headlines.pc=5;
put "pareto_lim", "pareto_var", "cost_prod", "cost_transp", "cost_res", "cost_total";
put / pareto_lim, pareto_var.L, cost_prod.L, cost_transp.L, cost_res.L, cost_total.L;

$include code/results-praq-production-spatial.gms
$include code/results-praq-quality-spatial.gms
$include code/results-praq-resources-spatial.gms
$include code/results-praq-processes-spatial.gms
$include code/results-praq-zoneflow-spatial.gms
$include code/results-praq-zoneflowQuality-spatial.gms
$include code/results-praq-transp-spatial.gms
$include code/results-praq-IsTransp-spatial.gms
*** OUTPUT METADATA TO CSV
*$include formulation/model-praq-stats.gms
