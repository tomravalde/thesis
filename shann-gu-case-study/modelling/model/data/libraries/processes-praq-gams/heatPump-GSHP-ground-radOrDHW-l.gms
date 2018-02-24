* heatPump-GSHP-ground-radOrDHW-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-ground-radOrDHW-l', 'wint') = 13;
rate_process_max('heatPump-GSHP-ground-radOrDHW-l', 'sum') = 13;
rate_process_max('heatPump-GSHP-ground-radOrDHW-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-ground-radOrDHW-l', 'elec', 'energy') = -0.3448276;
coeff_process_praq('heatPump-GSHP-ground-radOrDHW-l', 'heat', 'energy') = 1;
