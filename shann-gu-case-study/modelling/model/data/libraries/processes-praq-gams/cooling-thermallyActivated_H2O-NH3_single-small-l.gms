* cooling-thermallyActivated_H2O-NH3_single-small-l
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-small-l', 'wint') = 0.09;
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-small-l', 'sum') = 0.09;
rate_process_max('cooling-thermallyActivated_H2O-NH3_single-small-l', 'shoulder') = 0.09;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_single-small-l', 'heat', 'energy') = -1.818182;
coeff_process_praq('cooling-thermallyActivated_H2O-NH3_single-small-l', 'cool', 'energy') = 1;
