file results_praq_resources /"results-praq-resources.csv"/;
put results_praq_resources; results_praq_resources.pc=5;
put "resource", "season", "zone", "imports", "exports";
put results_praq_resources;
LOOP(R,
  LOOP(Z,
    LOOP(T,
      put / R.tl; put T.tl; put Z.tl; put imports.L(R,Z,T); put exports.L(R,Z,T)
    );
  );
);
