* heatPump-ASHP-twoStage-screedFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-twoStage-screedFloor-l', 'wint') = 13;
rate_process_max('heatPump-ASHP-twoStage-screedFloor-l', 'sum') = 13;
rate_process_max('heatPump-ASHP-twoStage-screedFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-twoStage-screedFloor-l', 'elec', 'energy') = -0.4347826;
coeff_process_praq('heatPump-ASHP-twoStage-screedFloor-l', 'heat', 'energy') = 1;
