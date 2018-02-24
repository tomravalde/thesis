* elecplant-coal-l
PARAMETER
rate_process_max(P,T);
rate_process_max('elecplant-coal-l', 'wint') = 5400;
rate_process_max('elecplant-coal-l', 'sum') = 5400;
rate_process_max('elecplant-coal-l', 'shoulder') = 5400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('elecplant-coal-l', 'coal', 'mass') = -0.1012658;
coeff_process_praq('elecplant-coal-l', 'elec', 'energy') = 1;
coeff_process_praq('elecplant-coal-l', 'heat', 'energy') = 1.56962;
coeff_process_praq('elecplant-coal-l', 'water', 'mass') = -0.8670886;
coeff_process_praq('elecplant-coal-l', 'CO2', 'mass') = 0.2341772;
coeff_process_praq('elecplant-coal-l', 'ash', 'mass') = 0.01012658;
