* heatPump-GSHP-ground-timberFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-ground-timberFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-GSHP-ground-timberFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-GSHP-ground-timberFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-ground-timberFloor-s', 'elec', 'energy') = -0.2702703;
coeff_process_praq('heatPump-GSHP-ground-timberFloor-s', 'heat', 'energy') = 1;
