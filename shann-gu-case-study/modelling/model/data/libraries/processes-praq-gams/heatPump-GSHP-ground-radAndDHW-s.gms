* heatPump-GSHP-ground-radAndDHW-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-ground-radAndDHW-s', 'wint') = 0.005;
rate_process_max('heatPump-GSHP-ground-radAndDHW-s', 'sum') = 0.005;
rate_process_max('heatPump-GSHP-ground-radAndDHW-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-ground-radAndDHW-s', 'elec', 'energy') = -0.4166667;
coeff_process_praq('heatPump-GSHP-ground-radAndDHW-s', 'heat', 'energy') = 1;
