* gasification-MSW-elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-MSW-elec-l', 'wint') = 80;
rate_process_max('gasification-MSW-elec-l', 'sum') = 80;
rate_process_max('gasification-MSW-elec-l', 'shoulder') = 80;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-MSW-elec-l', 'MSW', 'mass') = -0.680828;
coeff_process_praq('gasification-MSW-elec-l', 'coke', 'mass') = -0.03056918;
coeff_process_praq('gasification-MSW-elec-l', 'gasNatural', 'mass') = -0.001992733;
coeff_process_praq('gasification-MSW-elec-l', 'slag', 'mass') = 0.1177832;
coeff_process_praq('gasification-MSW-elec-l', 'metal', 'mass') = 0.01838235;
coeff_process_praq('gasification-MSW-elec-l', 'ash', 'mass') = 0.02246732;
coeff_process_praq('gasification-MSW-elec-l', 'elec', 'energy') = 1;
coeff_process_praq('gasification-MSW-elec-l', 'water', 'mass') = -191.6667;
