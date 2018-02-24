* boilerRoom
PARAMETER
rate_process_max(P,T);
rate_process_max('boilerRoom', 'wint') = 560;
rate_process_max('boilerRoom', 'shoulder') = 560;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('boilerRoom', 'coal', 'mass') = -0.0413;
coeff_process_praq('boilerRoom', 'heat', 'energy') = 1;
coeff_process_praq('boilerRoom', 'CO2', 'mass') = 0.044;
