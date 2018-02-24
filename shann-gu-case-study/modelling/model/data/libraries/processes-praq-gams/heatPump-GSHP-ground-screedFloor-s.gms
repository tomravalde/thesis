* heatPump-GSHP-ground-screedFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-ground-screedFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-GSHP-ground-screedFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-GSHP-ground-screedFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-ground-screedFloor-s', 'elec', 'energy') = -0.1639344;
coeff_process_praq('heatPump-GSHP-ground-screedFloor-s', 'heat', 'energy') = 1;
