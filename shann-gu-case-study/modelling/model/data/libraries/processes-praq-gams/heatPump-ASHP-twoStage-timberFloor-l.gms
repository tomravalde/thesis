* heatPump-ASHP-twoStage-timberFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-twoStage-timberFloor-l', 'wint') = 13;
rate_process_max('heatPump-ASHP-twoStage-timberFloor-l', 'sum') = 13;
rate_process_max('heatPump-ASHP-twoStage-timberFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-twoStage-timberFloor-l', 'elec', 'energy') = -0.5263158;
coeff_process_praq('heatPump-ASHP-twoStage-timberFloor-l', 'heat', 'energy') = 1;
