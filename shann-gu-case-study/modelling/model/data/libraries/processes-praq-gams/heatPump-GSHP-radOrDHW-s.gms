* heatPump-GSHP-radOrDHW-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-radOrDHW-s', 'wint') = 0.005;
rate_process_max('heatPump-GSHP-radOrDHW-s', 'sum') = 0.005;
rate_process_max('heatPump-GSHP-radOrDHW-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-radOrDHW-s', 'elec', 'energy') = -0.4166667;
coeff_process_praq('heatPump-GSHP-radOrDHW-s', 'heat', 'energy') = 1;
