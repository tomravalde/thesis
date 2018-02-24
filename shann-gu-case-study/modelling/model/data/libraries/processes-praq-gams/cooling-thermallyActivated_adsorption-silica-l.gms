* cooling-thermallyActivated_adsorption-silica-l
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_adsorption-silica-l', 'wint') = 1;
rate_process_max('cooling-thermallyActivated_adsorption-silica-l', 'sum') = 1;
rate_process_max('cooling-thermallyActivated_adsorption-silica-l', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_adsorption-silica-l', 'heat', 'energy') = -2.5;
coeff_process_praq('cooling-thermallyActivated_adsorption-silica-l', 'cool', 'energy') = 1;
