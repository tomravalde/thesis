* heatEx_hot
PARAMETER
rate_process_max(P,T);
rate_process_max('heatEx_hot', 'wint') = 6.723;
rate_process_max('heatEx_hot', 'shoulder') = 6.723;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatEx_hot', 'hot_primary_feed', 'mass') = -1;
coeff_process_praq('heatEx_hot', 'hot_primary_return', 'mass') = 1;
coeff_process_praq('heatEx_hot', 'hot_secondary_feed', 'mass') = 1;
coeff_process_praq('heatEx_hot', 'hot_secondary_return', 'mass') = -1;
