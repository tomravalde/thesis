* cooling-thermallyActivated_H2O-NH3_single-l
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-l', 'wint') = 6.5;
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-l', 'sum') = 6.5;
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-l', 'shoulder') = 6.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_single-l', 'heat', 'energy') = -2.352941;
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_single-l', 'cool', 'energy') = 1;
