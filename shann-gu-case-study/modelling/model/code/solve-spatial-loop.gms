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
	MFI_VALUE,
	MFI_CONSTRAINT,
	COST_PROCESS_PRODUCTION,
	COST_PROCESS_TRANSPORT,
	COST_IMPORTS,
        PARETO_VARIABLE,
        PARETO_CONDITION,
        OBJECTIVE_FUNCTION
		/;

num_process.up(P,Z) = 15000;

* Setup Pareto curve data
file Headlines /"headlines.csv"/;
put Headlines; Headlines.pc=5;
put "runs", "pareto_lim", "pareto_var", "cost_prod", "cost_transp", "cost_res", "cost_total";

* Setup process production (quantity) data
file results_praq_production /"results-praq-production.csv"/;
put results_praq_production; results_praq_production.pc=5;
put "run", "process", "resource", "season", "zone", "value";

* Setup process production (quality) data
file results_praq_quality /"results-praq-quality.csv"/;
put results_praq_quality; results_praq_quality.pc=5;
put "resource", "quality", "season", "zone", "value";

* Setup resource flows data
file results_praq_resources /"results-praq-resources.csv"/;
put results_praq_resources; results_praq_resources.pc=5;
put "run", "resource", "season", "zone", "imports", "exports";

* Setup process allocation data
file results_praq_processes /"results-praq-processes.csv"/;
put results_praq_processes; results_praq_processes.pc=5;
put "run", "process", "season", "zone", "rate", "number";

* Setup interzonal flow (quantity) data
file results_praq_zoneflow /"results-praq-zoneflow.csv"/;
put results_praq_zoneflow; results_praq_zoneflow.pc=5;
put "run", "transp_tech", "resource", "season", "zone", "value";

* Setup interzonal flow (quality) data
file results_praq_zoneflowQuality /"results-praq-zoneflowQuality.csv"/;
put results_praq_zoneflowQuality; results_praq_zoneflowQuality.pc=5;
put "run", "resource", "quality", "season", "zone", "value";

* Setup transport rate data
file results_praq_transp /"results-praq-transp.csv"/;
put results_praq_transp; results_praq_transp.pc=5;
put "run", "transp_tech", "season", "zone_start", "zone_end", "rate";

* Setup transport network data
file results_praq_IsTransp /"results-praq-IsTransp.csv"/;
put results_praq_IsTransp; results_praq_IsTransp.pc=5;
put "run", "transp_tech", "zone_start", "zone_end", "isTransp";


LOOP(runs,

  pareto_lim = pareto_lim_options(runs);
  solve PRAQ min cost_total using mip;
* BEWARE: In the case of infeasible OF, the previous correct result will be printed!

  DISPLAY cost_total.L
  DISPLAY pareto_var.L

* Print Pareto curve data
  put Headlines;
  put / runs.tl; put pareto_lim, pareto_var.L, cost_prod.L, cost_transp.L, cost_res.L, cost_total.L

* Print process production (quantity) data
put results_praq_production;
LOOP(P,
  LOOP(R,
    LOOP(Z,
      LOOP(T,
        put / runs.tl; put P.tl; put R.tl; put T.tl; put Z.tl; put production_quantity.L(P,R,Z,T)
      );
    );
  );
);

* Print process production (quality) data
put results_praq_quality;
LOOP(R,
  LOOP(Q,
    LOOP(Z,
      LOOP(T,
        put / runs.tl; put R.tl; put Q.tl; put T.tl, put Z.tl; put production_quality.L(R,Q,Z,T)
      );
    );
  );
);

* Print resource flows data
put results_praq_resources;
LOOP(R,
  LOOP(Z,
    LOOP(T,
      put / runs.tl; put R.tl; put T.tl; put Z.tl; put imports.L(R,Z,T); put exports.L(R,Z,T)
    );
  );
);

* Print process allocation data
put results_praq_processes;
LOOP(P,
  LOOP(T,
    LOOP(Z,
      put / runs.tl; put P.tl; put T.tl put Z.tl; put rate_process.L(P,Z,T); put num_process.L(P,Z)
    );
  );
);

* Print interzonal flow (quantity) data
put results_praq_zoneflow;
LOOP(TT,
  LOOP(R,
    LOOP(Z,
      LOOP(T,
        put / runs.tl; put TT.tl; put R.tl; put T.tl; put Z.tl; put zoneflow_quantity.L(TT,R,Z,T)
      );
    );
  );
);

* Print interzonal flow (quality) data
put results_praq_zoneflowQuality;
LOOP(R,
  LOOP(Q,
    LOOP(Z,
      LOOP(T,
        put / runs.tl; put R.tl; put Q.tl; put T.tl; put Z.tl; put zoneflow_quality.L(R,Q,Z,T)
      );	
    );
  );
);

* Print transport rate data
put results_praq_transp;
LOOP(TT,
  LOOP(Z,
    LOOP(ZZ,
      LOOP(T,
        put / runs.tl; put TT.tl; put T.tl; put Z.tl; put ZZ.tl; put rate_transp.L(TT,Z,ZZ,T)
      );
    );
  );
);

* Print transport network data
put results_praq_IsTransp;
LOOP(TT,
  LOOP(Z,
    LOOP(ZZ,
      put / runs.tl; put TT.tl; put Z.tl; put ZZ.tl; put binary_transp.L(TT,Z,ZZ)
    );
  );
);

*** OUTPUT RESULTS TO CSV
*  $include formulation/results-praq-production-spatial-loop.gms
*  $include formulation/results-praq-quality-spatial-loop.gms
*  $include formulation/results-praq-resources-spatial-loop.gms
*  $include formulation/results-praq-processes-spatial-loop.gms
*  $include formulation/results-praq-zoneflow-spatial-loop.gms
*  $include formulation/results-praq-zoneflowQuality-spatial-loop.gms
*  $include formulation/results-praq-transp-spatial-loop.gms
*  $include formulation/results-praq-IsTransp-spatial-loop.gms

);
