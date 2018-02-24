* solar-CSP-dryCooling-l
PARAMETER
rate_process_max(P,T);
rate_process_max('solar-CSP-dryCooling-l', 'sum') = 50;
rate_process_max('solar-CSP-dryCooling-l', 'shoulder') = 50;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('solar-CSP-dryCooling-l', 'solar', 'energy') = -5.524862;
coeff_process_praq('solar-CSP-dryCooling-l', 'elec', 'energy') = 1;
coeff_process_praq('solar-CSP-dryCooling-l', 'water', 'mass') = -0.07486188;
