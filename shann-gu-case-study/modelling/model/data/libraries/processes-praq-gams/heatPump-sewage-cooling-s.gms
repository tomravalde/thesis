* heatPump-sewage-cooling-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-sewage-cooling-s', 'wint') = 0.005;
rate_process_max('heatPump-sewage-cooling-s', 'sum') = 0.005;
rate_process_max('heatPump-sewage-cooling-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-sewage-cooling-s', 'elec', 'energy') = -0.2857143;
coeff_process_praq('heatPump-sewage-cooling-s', 'heat', 'energy') = 1;
coeff_process_praq('heatPump-sewage-cooling-s', 'wastewater', 'mass') = -17.14286;
