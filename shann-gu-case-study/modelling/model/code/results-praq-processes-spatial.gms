file results_praq_processes /"results-praq-processes.csv"/;
put results_praq_processes; results_praq_processes.pc=5;
put "process", "season", "zone", "rate", "number";
put results_praq_processes;
LOOP(P,
  LOOP(T,
    LOOP(Z,
      put / P.tl; put T.tl put Z.tl; put rate_process.L(P,Z,T); put num_process.L(P,Z)
    );
  );
);
