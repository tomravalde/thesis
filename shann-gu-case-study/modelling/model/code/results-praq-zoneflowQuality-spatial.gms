file results_praq_zoneflowQuality /"results-praq-zoneflowQuality.csv"/;
put results_praq_zoneflowQuality; results_praq_zoneflowQuality.pc=5;
put "resource", "quality", "season", "zone", "value";
put results_praq_zoneflowQuality;
LOOP(R,
  LOOP(Q,
    LOOP(Z,
      LOOP(T,
        put / R.tl; put Q.tl; put T.tl; put Z.tl; put zoneflow_quality.L(R,Q,Z,T)
      );	
    );
  );
);
