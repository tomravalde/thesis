* heatPump-GSHP-ground-radAndDHW-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-ground-radAndDHW-l', 'wint') = 13;
rate_process_max('heatPump-GSHP-ground-radAndDHW-l', 'sum') = 13;
rate_process_max('heatPump-GSHP-ground-radAndDHW-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-ground-radAndDHW-l', 'elec', 'energy') = -0.4166667;
coeff_process_praq('heatPump-GSHP-ground-radAndDHW-l', 'heat', 'energy') = 1;
