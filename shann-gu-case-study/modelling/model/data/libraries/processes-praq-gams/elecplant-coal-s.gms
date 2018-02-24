* elecplant-coal-s
PARAMETER
rate_process_max(P,T);
rate_process_max('elecplant-coal-s', 'wint') = 10;
rate_process_max('elecplant-coal-s', 'sum') = 10;
rate_process_max('elecplant-coal-s', 'shoulder') = 10;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('elecplant-coal-s', 'coal', 'mass') = -0.1012658;
coeff_process_praq('elecplant-coal-s', 'elec', 'energy') = 1;
coeff_process_praq('elecplant-coal-s', 'heat', 'energy') = 1.56962;
coeff_process_praq('elecplant-coal-s', 'water', 'mass') = -0.8670886;
coeff_process_praq('elecplant-coal-s', 'CO2', 'mass') = 0.2341772;
coeff_process_praq('elecplant-coal-s', 'ash', 'mass') = 0.01012658;
