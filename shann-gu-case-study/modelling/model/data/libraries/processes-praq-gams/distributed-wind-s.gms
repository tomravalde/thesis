* distributed-wind-s
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-wind-s', 'wint') = 0.001;
rate_process_max('distributed-wind-s', 'sum') = 0.001;
rate_process_max('distributed-wind-s', 'shoulder') = 0.001;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-wind-s', 'wind', 'energy') = -3.333333;
coeff_process_praq('distributed-wind-s', 'elec', 'energy') = 1;
