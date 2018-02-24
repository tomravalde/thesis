* cooling-thermallyActivated_LiBr-H2O_double-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_LiBr-H2O_double-s', 'wint') = 0.02;
rate_process_max('cooling-thermallyActivated_LiBr-H2O_double-s', 'sum') = 0.02;
rate_process_max('cooling-thermallyActivated_LiBr-H2O_double-s', 'shoulder') = 0.02;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_LiBr-H2O_double-s', 'heat', 'energy') = -0.9090909;
coeff_process_praq('cooling-thermallyActivated_LiBr-H2O_double-s', 'cool', 'energy') = 1;
