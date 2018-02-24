* heatPump-sewage-cooling-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-sewage-cooling-l', 'wint') = 13;
rate_process_max('heatPump-sewage-cooling-l', 'sum') = 13;
rate_process_max('heatPump-sewage-cooling-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-sewage-cooling-l', 'elec', 'energy') = -0.2857143;
coeff_process_praq('heatPump-sewage-cooling-l', 'heat', 'energy') = 1;
coeff_process_praq('heatPump-sewage-cooling-l', 'wastewater', 'mass') = -17.14286;
