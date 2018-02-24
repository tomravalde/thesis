* cooling-thermallyActivated_LiBr-H2O_single-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_LiBr-H2O_single-s', 'wint') = 0.005;
rate_process_max('cooling-thermallyActivated_LiBr-H2O_single-s', 'sum') = 0.005;
rate_process_max('cooling-thermallyActivated_LiBr-H2O_single-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_LiBr-H2O_single-s', 'heat', 'energy') = -1.666667;
coeff_process_praq('cooling-thermallyActivated_LiBr-H2O_single-s', 'cool', 'energy') = 1;
