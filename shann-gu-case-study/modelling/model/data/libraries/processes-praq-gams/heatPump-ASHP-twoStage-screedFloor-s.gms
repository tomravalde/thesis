* heatPump-ASHP-twoStage-screedFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-twoStage-screedFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-ASHP-twoStage-screedFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-ASHP-twoStage-screedFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-twoStage-screedFloor-s', 'elec', 'energy') = -0.4347826;
coeff_process_praq('heatPump-ASHP-twoStage-screedFloor-s', 'heat', 'energy') = 1;
