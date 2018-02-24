* heatPump_water
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump_water', 'wint') = 6;
rate_process_max('heatPump_water', 'sum') = 6;
rate_process_max('heatPump_water', 'shoulder') = 6;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump_water', 'heat', 'energy') = 1;
coeff_process_praq('heatPump_water', 'elec', 'energy') = -0.3;
