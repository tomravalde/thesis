* solar-to-hydrogen_photoelectrolysis
PARAMETER
rate_process_max(P,T);
rate_process_max('solar-to-hydrogen_photoelectrolysis', 'sum') = 41;
rate_process_max('solar-to-hydrogen_photoelectrolysis', 'shoulder') = 41;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('solar-to-hydrogen_photoelectrolysis', 'solar', 'energy') = -909.0909;
coeff_process_praq('solar-to-hydrogen_photoelectrolysis', 'hydrogen', 'mass') = 1;
coeff_process_praq('solar-to-hydrogen_photoelectrolysis', 'water', 'mass') = -1.830909;
