* cooling-evaporative-cooling
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-evaporative-cooling', 'wint') = 1.08e-06;
rate_process_max('cooling-evaporative-cooling', 'sum') = 1.08e-06;
rate_process_max('cooling-evaporative-cooling', 'shoulder') = 1.08e-06;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-evaporative-cooling', 'heat', 'energy') = -2.558816;
coeff_process_praq('cooling-evaporative-cooling', 'cool', 'energy') = 1;
coeff_process_praq('cooling-evaporative-cooling', 'water', 'mass') = -10914.38;
