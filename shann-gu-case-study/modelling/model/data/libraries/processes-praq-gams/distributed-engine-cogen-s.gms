* distributed-engine-cogen-s
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-engine-cogen-s', 'wint') = 1;
rate_process_max('distributed-engine-cogen-s', 'sum') = 1;
rate_process_max('distributed-engine-cogen-s', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-engine-cogen-s', 'diesel', 'mass') = -0.052075;
coeff_process_praq('distributed-engine-cogen-s', 'elec', 'energy') = 1;
coeff_process_praq('distributed-engine-cogen-s', 'heat', 'energy') = 1;
coeff_process_praq('distributed-engine-cogen-s', 'CO2', 'mass') = 0.18525;
