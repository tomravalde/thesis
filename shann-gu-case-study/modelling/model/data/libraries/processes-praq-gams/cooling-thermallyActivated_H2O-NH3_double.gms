* cooling-thermallyActivated_H2O-NH3_double
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_H2O-NH3_double', 'wint') = 0.11;
rate_process_max('cooling-thermallyActivated_H2O-NH3_double', 'sum') = 0.11;
rate_process_max('cooling-thermallyActivated_H2O-NH3_double', 'shoulder') = 0.11;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_double', 'heat', 'energy') = -1;
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_double', 'cool', 'energy') = 1;
