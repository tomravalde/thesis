* sludge-biodiesel-s
PARAMETER
rate_process_max(P,T);
rate_process_max('sludge-biodiesel-s', 'wint') = 0.00317;
rate_process_max('sludge-biodiesel-s', 'sum') = 0.00317;
rate_process_max('sludge-biodiesel-s', 'shoulder') = 0.00317;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('sludge-biodiesel-s', 'sludge', 'mass') = -26.3;
coeff_process_praq('sludge-biodiesel-s', 'heat', 'energy') = -2.84;
coeff_process_praq('sludge-biodiesel-s', 'methanol', 'mass') = -0.10381;
coeff_process_praq('sludge-biodiesel-s', 'elec', 'energy') = -2.1024;
coeff_process_praq('sludge-biodiesel-s', 'water', 'mass') = -0.505;
coeff_process_praq('sludge-biodiesel-s', 'biodiesel', 'mass') = 1;
coeff_process_praq('sludge-biodiesel-s', 'waste', 'mass') = 0.00455;
coeff_process_praq('sludge-biodiesel-s', 'fertilizer', 'mass') = 0.00497;
