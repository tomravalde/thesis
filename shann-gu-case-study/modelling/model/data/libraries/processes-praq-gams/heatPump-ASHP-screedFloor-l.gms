* heatPump-ASHP-screedFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-screedFloor-l', 'wint') = 13;
rate_process_max('heatPump-ASHP-screedFloor-l', 'sum') = 13;
rate_process_max('heatPump-ASHP-screedFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-screedFloor-l', 'elec', 'energy') = -0.4761905;
coeff_process_praq('heatPump-ASHP-screedFloor-l', 'heat', 'energy') = 1;
