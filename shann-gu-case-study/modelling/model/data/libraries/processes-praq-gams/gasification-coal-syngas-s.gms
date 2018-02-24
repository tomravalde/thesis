* gasification-coal-syngas-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal-syngas-s', 'wint') = 400;
rate_process_max('gasification-coal-syngas-s', 'sum') = 400;
rate_process_max('gasification-coal-syngas-s', 'shoulder') = 400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal-syngas-s', 'coal', 'mass') = -0.08426184;
coeff_process_praq('gasification-coal-syngas-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal-syngas-s', 'water', 'mass') = -0.5399946;
coeff_process_praq('gasification-coal-syngas-s', 'CO2', 'mass') = 0.2058369;
