* heatPump-GSHP-timberFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-timberFloor-l', 'wint') = 13;
rate_process_max('heatPump-GSHP-timberFloor-l', 'sum') = 13;
rate_process_max('heatPump-GSHP-timberFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-timberFloor-l', 'elec', 'energy') = -0.3448276;
coeff_process_praq('heatPump-GSHP-timberFloor-l', 'heat', 'energy') = 1;
