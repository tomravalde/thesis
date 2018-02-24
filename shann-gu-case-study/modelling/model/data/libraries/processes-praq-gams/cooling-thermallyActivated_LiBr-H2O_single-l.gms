* cooling-thermallyActivated_LiBr-H2O_single-l
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_LiBr-H2O_single-l', 'wint') = 7;
rate_process_max('cooling-thermallyActivated_LiBr-H2O_single-l', 'sum') = 7;
rate_process_max('cooling-thermallyActivated_LiBr-H2O_single-l', 'shoulder') = 7;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_LiBr-H2O_single-l', 'heat', 'energy') = -1.666667;
coeff_process_praq('cooling-thermallyActivated_LiBr-H2O_single-l', 'cool', 'energy') = 1;
