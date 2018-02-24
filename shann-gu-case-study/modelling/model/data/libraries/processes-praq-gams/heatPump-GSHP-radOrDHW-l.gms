* heatPump-GSHP-radOrDHW-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-radOrDHW-l', 'wint') = 13;
rate_process_max('heatPump-GSHP-radOrDHW-l', 'sum') = 13;
rate_process_max('heatPump-GSHP-radOrDHW-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-radOrDHW-l', 'elec', 'energy') = -0.4166667;
coeff_process_praq('heatPump-GSHP-radOrDHW-l', 'heat', 'energy') = 1;
