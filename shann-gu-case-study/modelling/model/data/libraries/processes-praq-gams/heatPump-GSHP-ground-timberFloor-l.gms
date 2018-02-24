* heatPump-GSHP-ground-timberFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-ground-timberFloor-l', 'wint') = 13;
rate_process_max('heatPump-GSHP-ground-timberFloor-l', 'sum') = 13;
rate_process_max('heatPump-GSHP-ground-timberFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-ground-timberFloor-l', 'elec', 'energy') = -0.2702703;
coeff_process_praq('heatPump-GSHP-ground-timberFloor-l', 'heat', 'energy') = 1;
