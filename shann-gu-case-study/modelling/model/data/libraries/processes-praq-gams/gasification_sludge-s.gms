* gasification_sludge-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification_sludge-s', 'wint') = 0.62;
rate_process_max('gasification_sludge-s', 'sum') = 0.62;
rate_process_max('gasification_sludge-s', 'shoulder') = 0.62;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification_sludge-s', 'sludge', 'mass') = -0.6880952;
coeff_process_praq('gasification_sludge-s', 'heat', 'energy') = 0.002380952;
coeff_process_praq('gasification_sludge-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification_sludge-s', 'water', 'mass') = -0.4761905;
coeff_process_praq('gasification_sludge-s', 'slag', 'mass') = 0.0006904762;
