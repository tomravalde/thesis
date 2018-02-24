file results_praq_quality /"results-praq-quality.csv"/;
put results_praq_quality; results_praq_quality.pc=5;
put "resource", "quality", "season", "zone", "value";
put results_praq_quality;
LOOP(R,
  LOOP(Q,
    LOOP(Z,
      LOOP(T,
        put / R.tl; put Q.tl; put T.tl, put Z.tl; put production_quality.L(R,Q,Z,T)
      );
    );
  );
);
