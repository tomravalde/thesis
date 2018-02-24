* sludge-biodiesel-l
PARAMETER
rate_process_max(P,T);
rate_process_max('sludge-biodiesel-l', 'wint') = 3.17;
rate_process_max('sludge-biodiesel-l', 'sum') = 3.17;
rate_process_max('sludge-biodiesel-l', 'shoulder') = 3.17;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('sludge-biodiesel-l', 'sludge', 'mass') = -26.3;
coeff_process_praq('sludge-biodiesel-l', 'heat', 'energy') = -2.84;
coeff_process_praq('sludge-biodiesel-l', 'methanol', 'mass') = -0.10381;
coeff_process_praq('sludge-biodiesel-l', 'elec', 'energy') = -2.1024;
coeff_process_praq('sludge-biodiesel-l', 'water', 'mass') = -0.505;
coeff_process_praq('sludge-biodiesel-l', 'biodiesel', 'mass') = 1;
coeff_process_praq('sludge-biodiesel-l', 'waste', 'mass') = 0.00455;
coeff_process_praq('sludge-biodiesel-l', 'fertilizer', 'mass') = 0.00497;
