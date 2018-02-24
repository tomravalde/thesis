* heatPump-GSHP-timberFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-timberFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-GSHP-timberFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-GSHP-timberFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-timberFloor-s', 'elec', 'energy') = -0.3448276;
coeff_process_praq('heatPump-GSHP-timberFloor-s', 'heat', 'energy') = 1;
