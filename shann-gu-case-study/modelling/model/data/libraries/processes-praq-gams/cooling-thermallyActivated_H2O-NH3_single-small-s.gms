* cooling-thermallyActivated_H2O-NH3_single-small-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-small-s', 'wint') = 0.01;
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-small-s', 'sum') = 0.01;
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-small-s', 'shoulder') = 0.01;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_single-small-s', 'heat', 'energy') = -1.818182;
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_single-small-s', 'cool', 'energy') = 1;
