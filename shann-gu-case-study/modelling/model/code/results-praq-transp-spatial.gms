file results_praq_transp /"results-praq-transp.csv"/;
put results_praq_transp; results_praq_transp.pc=5;
put "transp_tech", "season", "zone_start", "zone_end", "rate";
put results_praq_transp;
LOOP(TT,
  LOOP(Z,
    LOOP(ZZ,
      LOOP(T,
        put / TT.tl; put T.tl; put Z.tl; put ZZ.tl; put rate_transp.L(TT,Z,ZZ,T)
      );
    );
  );
);
