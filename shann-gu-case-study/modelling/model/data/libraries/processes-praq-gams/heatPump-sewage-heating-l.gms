* heatPump-sewage-heating-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-sewage-heating-l', 'wint') = 13;
rate_process_max('heatPump-sewage-heating-l', 'sum') = 13;
rate_process_max('heatPump-sewage-heating-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-sewage-heating-l', 'elec', 'energy') = -0.2325581;
coeff_process_praq('heatPump-sewage-heating-l', 'heat', 'energy') = 1;
coeff_process_praq('heatPump-sewage-heating-l', 'wastewater', 'mass') = -18.60465;
