* cooling-thermallyActivated_liquidDessicant-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_liquidDessicant-s', 'wint') = 0.05;
rate_process_max('cooling-thermallyActivated_liquidDessicant-s', 'sum') = 0.05;
rate_process_max('cooling-thermallyActivated_liquidDessicant-s', 'shoulder') = 0.05;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_liquidDessicant-s', 'heat', 'energy') = -1.176471;
coeff_process_praq('cooling-thermallyActivated_liquidDessicant-s', 'cool', 'energy') = 1;
