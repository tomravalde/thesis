* distributed-wind-l
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-wind-l', 'wint') = 0.006;
rate_process_max('distributed-wind-l', 'sum') = 0.006;
rate_process_max('distributed-wind-l', 'shoulder') = 0.006;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-wind-l', 'wind', 'energy') = -3.333333;
coeff_process_praq('distributed-wind-l', 'elec', 'energy') = 1;
