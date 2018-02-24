* centralCooling
PARAMETER
rate_process_max(P,T);
rate_process_max('centralCooling', 'sum') = 0.025;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('centralCooling', 'cool', 'energy') = 1;
coeff_process_praq('centralCooling', 'cold_secondary_feed', 'mass') = -23.9;
coeff_process_praq('centralCooling', 'cold_secondary_return', 'mass') = 23.9;
