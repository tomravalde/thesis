* heatPump-ASHP-twoStage-timberFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-twoStage-timberFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-ASHP-twoStage-timberFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-ASHP-twoStage-timberFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-twoStage-timberFloor-s', 'elec', 'energy') = -0.5263158;
coeff_process_praq('heatPump-ASHP-twoStage-timberFloor-s', 'heat', 'energy') = 1;
