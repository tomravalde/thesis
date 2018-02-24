* heatPump-GSHP-ground-radOrDHW-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-ground-radOrDHW-s', 'wint') = 0.005;
rate_process_max('heatPump-GSHP-ground-radOrDHW-s', 'sum') = 0.005;
rate_process_max('heatPump-GSHP-ground-radOrDHW-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-ground-radOrDHW-s', 'elec', 'energy') = -0.3448276;
coeff_process_praq('heatPump-GSHP-ground-radOrDHW-s', 'heat', 'energy') = 1;
