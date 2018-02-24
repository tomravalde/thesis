* cooling-evaporative-heating
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-evaporative-heating', 'wint') = 0.00382;
rate_process_max('cooling-evaporative-heating', 'sum') = 0.00382;
rate_process_max('cooling-evaporative-heating', 'shoulder') = 0.00382;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-evaporative-heating', 'heat', 'energy') = -0.3289474;
coeff_process_praq('cooling-evaporative-heating', 'cool', 'energy') = 1;
