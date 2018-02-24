* heatPump-GSHP-screedFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-screedFloor-l', 'wint') = 13;
rate_process_max('heatPump-GSHP-screedFloor-l', 'sum') = 13;
rate_process_max('heatPump-GSHP-screedFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-screedFloor-l', 'elec', 'energy') = -0.2298851;
coeff_process_praq('heatPump-GSHP-screedFloor-l', 'heat', 'energy') = 1;
