* cooling-thermallyActivated_solidDessicant-l
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_solidDessicant-l', 'wint') = 0.05;
rate_process_max('cooling-thermallyActivated_solidDessicant-l', 'sum') = 0.05;
rate_process_max('cooling-thermallyActivated_solidDessicant-l', 'shoulder') = 0.05;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_solidDessicant-l', 'heat', 'energy') = -1.538462;
coeff_process_praq('cooling-thermallyActivated_solidDessicant-l', 'cool', 'energy') = 1;
