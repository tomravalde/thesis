file results_praq_zoneflow /"results-praq-zoneflow.csv"/;
put results_praq_zoneflow; results_praq_zoneflow.pc=5;
put "transp_tech", "resource", "season", "zone", "value";
put results_praq_zoneflow;
LOOP(TT,
  LOOP(R,
    LOOP(Z,
      LOOP(T,
        put / TT.tl; put R.tl; put T.tl; put Z.tl; put zoneflow_quantity.L(TT,R,Z,T)
      );
    );
  );
);
