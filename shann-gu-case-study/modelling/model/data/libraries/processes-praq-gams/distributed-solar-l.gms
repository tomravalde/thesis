* distributed-solar-l
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-solar-l', 'wint') = 3;
rate_process_max('distributed-solar-l', 'shoulder') = 3;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-solar-l', 'solar', 'energy') = -5.882353;
coeff_process_praq('distributed-solar-l', 'elec', 'energy') = 1;
