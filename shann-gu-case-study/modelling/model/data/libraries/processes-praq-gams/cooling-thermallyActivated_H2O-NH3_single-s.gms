* cooling-thermallyActivated_H2O-NH3_single-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-s', 'wint') = 0.01;
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-s', 'sum') = 0.01;
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-s', 'shoulder') = 0.01;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_single-s', 'heat', 'energy') = -2.352941;
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_single-s', 'cool', 'energy') = 1;
