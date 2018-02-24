* cooling-thermallyActivated_liquidDessicant-l
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_liquidDessicant-l', 'wint') = 0.5;
rate_process_max('cooling-thermallyActivated_liquidDessicant-l', 'sum') = 0.5;
rate_process_max('cooling-thermallyActivated_liquidDessicant-l', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_liquidDessicant-l', 'heat', 'energy') = -1.176471;
coeff_process_praq('cooling-thermallyActivated_liquidDessicant-l', 'cool', 'energy') = 1;
