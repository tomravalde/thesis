* LiBr_chill
PARAMETER
rate_process_max(P,T);
rate_process_max('LiBr_chill', 'sum') = 6.723;
rate_process_max('LiBr_chill', 'shoulder') = 6.723;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('LiBr_chill', 'heat', 'energy') = -0.0418;
coeff_process_praq('LiBr_chill', 'cold_primary_feed', 'mass') = 1;
coeff_process_praq('LiBr_chill', 'cold_primary_return', 'mass') = -1;
