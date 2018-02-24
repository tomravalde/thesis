* cooling-thermallyActivated_adsorption-silica-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_adsorption-silica-s', 'wint') = 0.005;
rate_process_max('cooling-thermallyActivated_adsorption-silica-s', 'sum') = 0.005;
rate_process_max('cooling-thermallyActivated_adsorption-silica-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_adsorption-silica-s', 'heat', 'energy') = -2.5;
coeff_process_praq('cooling-thermallyActivated_adsorption-silica-s', 'cool', 'energy') = 1;
