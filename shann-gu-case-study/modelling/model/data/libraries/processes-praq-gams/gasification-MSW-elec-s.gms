* gasification-MSW-elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-MSW-elec-s', 'wint') = 50;
rate_process_max('gasification-MSW-elec-s', 'sum') = 50;
rate_process_max('gasification-MSW-elec-s', 'shoulder') = 50;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-MSW-elec-s', 'MSW', 'mass') = -0.680828;
coeff_process_praq('gasification-MSW-elec-s', 'coke', 'mass') = -0.03056918;
coeff_process_praq('gasification-MSW-elec-s', 'gasNatural', 'mass') = -0.001992733;
coeff_process_praq('gasification-MSW-elec-s', 'slag', 'mass') = 0.1177832;
coeff_process_praq('gasification-MSW-elec-s', 'metal', 'mass') = 0.01838235;
coeff_process_praq('gasification-MSW-elec-s', 'ash', 'mass') = 0.02246732;
coeff_process_praq('gasification-MSW-elec-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification-MSW-elec-s', 'water', 'mass') = -191.6667;
