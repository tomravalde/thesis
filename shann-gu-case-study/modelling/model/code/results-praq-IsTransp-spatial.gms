file results_praq_IsTransp /"results-praq-IsTransp.csv"/;
put results_praq_IsTransp; results_praq_IsTransp.pc=5;
put "transp_tech", "zone_start", "zone_end", "isTransp";
put results_praq_IsTransp;
LOOP(TT,
  LOOP(Z,
    LOOP(ZZ,
      put / put TT.tl; put Z.tl; put ZZ.tl; put binary_transp.L(TT,Z,ZZ)
    );
  );
);
