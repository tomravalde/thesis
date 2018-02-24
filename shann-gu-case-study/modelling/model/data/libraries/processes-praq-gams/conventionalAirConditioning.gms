* conventionalAirConditioning
PARAMETER
rate_process_max(P,T);
rate_process_max('conventionalAirConditioning', 'wint') = 0.003517;
rate_process_max('conventionalAirConditioning', 'sum') = 0.003517;
rate_process_max('conventionalAirConditioning', 'shoulder') = 0.003517;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('conventionalAirConditioning', 'elec', 'energy') = -1.248223;
coeff_process_praq('conventionalAirConditioning', 'cool', 'energy') = 1;
