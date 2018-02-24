* cooling-thermallyActivated_solidDessicant-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_solidDessicant-s', 'wint') = 0.005;
rate_process_max('cooling-thermallyActivated_solidDessicant-s', 'sum') = 0.005;
rate_process_max('cooling-thermallyActivated_solidDessicant-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_solidDessicant-s', 'heat', 'energy') = -1.538462;
coeff_process_praq('cooling-thermallyActivated_solidDessicant-s', 'cool', 'energy') = 1;
