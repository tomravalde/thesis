* distributed-solar-s
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-solar-s', 'sum') = 1;
rate_process_max('distributed-solar-s', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-solar-s', 'solar', 'energy') = -5.882353;
coeff_process_praq('distributed-solar-s', 'elec', 'energy') = 1;
