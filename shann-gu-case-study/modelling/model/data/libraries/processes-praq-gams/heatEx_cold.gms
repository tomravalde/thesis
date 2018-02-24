* heatEx_cold
PARAMETER
rate_process_max(P,T);
rate_process_max('heatEx_cold', 'sum') = 6.723;
rate_process_max('heatEx_cold', 'shoulder') = 6.723;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatEx_cold', 'cold_primary_feed', 'mass') = -1;
coeff_process_praq('heatEx_cold', 'cold_primary_return', 'mass') = 1;
coeff_process_praq('heatEx_cold', 'cold_secondary_feed', 'mass') = 1;
coeff_process_praq('heatEx_cold', 'cold_secondary_return', 'mass') = -1;
