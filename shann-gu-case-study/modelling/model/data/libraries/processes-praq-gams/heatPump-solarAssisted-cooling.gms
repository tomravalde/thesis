* heatPump-solarAssisted-cooling
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-solarAssisted-cooling', 'wint') = 0.01;
rate_process_max('heatPump-solarAssisted-cooling', 'sum') = 0.01;
rate_process_max('heatPump-solarAssisted-cooling', 'shoulder') = 0.01;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-solarAssisted-cooling', 'solar', 'energy') = 0.07324159;
coeff_process_praq('heatPump-solarAssisted-cooling', 'elec', 'energy') = -7.597859e-08;
coeff_process_praq('heatPump-solarAssisted-cooling', 'heat', 'energy') = 1;
