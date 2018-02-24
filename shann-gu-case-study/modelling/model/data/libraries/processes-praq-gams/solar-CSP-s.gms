* solar-CSP-s
PARAMETER
rate_process_max(P,T);
rate_process_max('solar-CSP-s', 'sum') = 0.25;
rate_process_max('solar-CSP-s', 'shoulder') = 0.25;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('solar-CSP-s', 'solar', 'energy') = -7.042254;
coeff_process_praq('solar-CSP-s', 'elec', 'energy') = 1;
coeff_process_praq('solar-CSP-s', 'water', 'mass') = -0.06566901;
