* heatPump-GSHP-ground-screedFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-ground-screedFloor-l', 'wint') = 13;
rate_process_max('heatPump-GSHP-ground-screedFloor-l', 'sum') = 13;
rate_process_max('heatPump-GSHP-ground-screedFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-ground-screedFloor-l', 'elec', 'energy') = -0.1639344;
coeff_process_praq('heatPump-GSHP-ground-screedFloor-l', 'heat', 'energy') = 1;
