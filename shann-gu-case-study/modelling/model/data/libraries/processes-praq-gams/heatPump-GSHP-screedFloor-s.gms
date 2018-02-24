* heatPump-GSHP-screedFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-GSHP-screedFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-GSHP-screedFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-GSHP-screedFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-GSHP-screedFloor-s', 'elec', 'energy') = -0.2298851;
coeff_process_praq('heatPump-GSHP-screedFloor-s', 'heat', 'energy') = 1;
