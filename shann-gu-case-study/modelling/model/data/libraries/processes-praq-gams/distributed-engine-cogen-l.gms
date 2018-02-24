* distributed-engine-cogen-l
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-engine-cogen-l', 'wint') = 3;
rate_process_max('distributed-engine-cogen-l', 'sum') = 3;
rate_process_max('distributed-engine-cogen-l', 'shoulder') = 3;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-engine-cogen-l', 'diesel', 'mass') = -0.052075;
coeff_process_praq('distributed-engine-cogen-l', 'elec', 'energy') = 1;
coeff_process_praq('distributed-engine-cogen-l', 'heat', 'energy') = 1;
coeff_process_praq('distributed-engine-cogen-l', 'CO2', 'mass') = 0.18525;
