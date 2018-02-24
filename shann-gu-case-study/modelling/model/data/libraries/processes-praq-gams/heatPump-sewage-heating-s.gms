* heatPump-sewage-heating-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-sewage-heating-s', 'wint') = 0.005;
rate_process_max('heatPump-sewage-heating-s', 'sum') = 0.005;
rate_process_max('heatPump-sewage-heating-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-sewage-heating-s', 'elec', 'energy') = -0.2325581;
coeff_process_praq('heatPump-sewage-heating-s', 'heat', 'energy') = 1;
coeff_process_praq('heatPump-sewage-heating-s', 'wastewater', 'mass') = -18.60465;
