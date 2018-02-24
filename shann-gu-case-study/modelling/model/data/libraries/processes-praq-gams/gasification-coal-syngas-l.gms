* gasification-coal-syngas-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal-syngas-l', 'wint') = 500;
rate_process_max('gasification-coal-syngas-l', 'sum') = 500;
rate_process_max('gasification-coal-syngas-l', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal-syngas-l', 'coal', 'mass') = -0.08426184;
coeff_process_praq('gasification-coal-syngas-l', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal-syngas-l', 'water', 'mass') = -0.5399946;
coeff_process_praq('gasification-coal-syngas-l', 'CO2', 'mass') = 0.2058369;
