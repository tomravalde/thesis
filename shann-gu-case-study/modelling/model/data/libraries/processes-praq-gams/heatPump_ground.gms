* heatPump_ground
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump_ground', 'wint') = 6;
rate_process_max('heatPump_ground', 'sum') = 6;
rate_process_max('heatPump_ground', 'shoulder') = 6;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump_ground', 'heat', 'energy') = 1;
coeff_process_praq('heatPump_ground', 'elec', 'energy') = -0.3;
