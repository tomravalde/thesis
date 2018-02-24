* heatPump-ASHP-screedFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-screedFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-ASHP-screedFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-ASHP-screedFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-screedFloor-s', 'elec', 'energy') = -0.4761905;
coeff_process_praq('heatPump-ASHP-screedFloor-s', 'heat', 'energy') = 1;
