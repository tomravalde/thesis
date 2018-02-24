* solar-CSP-l
PARAMETER
rate_process_max(P,T);
rate_process_max('solar-CSP-l', 'sum') = 550;
rate_process_max('solar-CSP-l', 'shoulder') = 550;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('solar-CSP-l', 'solar', 'energy') = -7.042254;
coeff_process_praq('solar-CSP-l', 'elec', 'energy') = 1;
coeff_process_praq('solar-CSP-l', 'water', 'mass') = -0.06566901;
