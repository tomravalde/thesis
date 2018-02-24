* distributed-engine-l
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-engine-l', 'wint') = 3;
rate_process_max('distributed-engine-l', 'sum') = 3;
rate_process_max('distributed-engine-l', 'shoulder') = 3;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-engine-l', 'diesel', 'mass') = -0.052075;
coeff_process_praq('distributed-engine-l', 'elec', 'energy') = 1;
coeff_process_praq('distributed-engine-l', 'CO2', 'mass') = 0.18525;
