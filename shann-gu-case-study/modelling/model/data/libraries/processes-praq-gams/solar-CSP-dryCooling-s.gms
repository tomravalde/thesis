* solar-CSP-dryCooling-s
PARAMETER
rate_process_max(P,T);
rate_process_max('solar-CSP-dryCooling-s', 'sum') = 0.25;
rate_process_max('solar-CSP-dryCooling-s', 'shoulder') = 0.25;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('solar-CSP-dryCooling-s', 'solar', 'energy') = -5.524862;
coeff_process_praq('solar-CSP-dryCooling-s', 'elec', 'energy') = 1;
coeff_process_praq('solar-CSP-dryCooling-s', 'water', 'mass') = -0.07486188;
