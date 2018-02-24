* LiBr_heat
PARAMETER
rate_process_max(P,T);
rate_process_max('LiBr_heat', 'wint') = 6.723;
rate_process_max('LiBr_heat', 'shoulder') = 6.723;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('LiBr_heat', 'heat', 'energy') = -0.25;
coeff_process_praq('LiBr_heat', 'hot_primary_feed', 'mass') = 1;
coeff_process_praq('LiBr_heat', 'hot_primary_return', 'mass') = -1;
