file results_praq_production /"results-praq-production.csv"/;
put results_praq_production; results_praq_production.pc=5;
put "process", "resource", "season", "zone", "value";
put results_praq_production;
LOOP(P,
  LOOP(R,
    LOOP(Z,
      LOOP(T,
        put / P.tl; put R.tl; put T.tl; put Z.tl; put production_quantity.L(P,R,Z,T)
      );
    );
  );
);
