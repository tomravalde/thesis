* activated-sludge-s
PARAMETER
rate_process_max(P,T);
rate_process_max('activated-sludge-s', 'wint') = 0.0116;
rate_process_max('activated-sludge-s', 'sum') = 0.0116;
rate_process_max('activated-sludge-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('activated-sludge-s', 'wastewater', 'mass') = -1;
coeff_process_praq('activated-sludge-s', 'elec', 'energy') = -0.003255319;
coeff_process_praq('activated-sludge-s', 'sludge', 'mass') = 0.06595745;
coeff_process_praq('activated-sludge-s', 'water', 'mass') = 1;
coeff_process_praq('activated-sludge-s', 'CO2', 'mass') = 0.0006223404;
