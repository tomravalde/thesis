* distributed-engine-s
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-engine-s', 'wint') = 1;
rate_process_max('distributed-engine-s', 'sum') = 1;
rate_process_max('distributed-engine-s', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-engine-s', 'diesel', 'mass') = -0.052075;
coeff_process_praq('distributed-engine-s', 'elec', 'energy') = 1;
coeff_process_praq('distributed-engine-s', 'CO2', 'mass') = 0.18525;
