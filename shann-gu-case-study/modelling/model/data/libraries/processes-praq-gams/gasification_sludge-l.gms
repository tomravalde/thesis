* gasification_sludge-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification_sludge-l', 'wint') = 2.85;
rate_process_max('gasification_sludge-l', 'sum') = 2.85;
rate_process_max('gasification_sludge-l', 'shoulder') = 2.85;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification_sludge-l', 'sludge', 'mass') = -0.6880952;
coeff_process_praq('gasification_sludge-l', 'heat', 'energy') = 0.002380952;
coeff_process_praq('gasification_sludge-l', 'elec', 'energy') = 1;
coeff_process_praq('gasification_sludge-l', 'water', 'mass') = -0.4761905;
coeff_process_praq('gasification_sludge-l', 'slag', 'mass') = 0.0006904762;
