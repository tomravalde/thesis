* activated-sludge-l
PARAMETER
rate_process_max(P,T);
rate_process_max('activated-sludge-l', 'sum') = 36.938;
rate_process_max('activated-sludge-l', 'wint') = 36.938;
rate_process_max('activated-sludge-l', 'shoulder') = 36.938;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('activated-sludge-l', 'wastewater', 'mass') = -1;
coeff_process_praq('activated-sludge-l', 'elec', 'energy') = -0.003255319;
coeff_process_praq('activated-sludge-l', 'sludge', 'mass') = 0.06595745;
coeff_process_praq('activated-sludge-l', 'water', 'mass') = 1;
coeff_process_praq('activated-sludge-l', 'CO2', 'mass') = 0.0006223404;
