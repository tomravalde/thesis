* heatPump-ASHP-highEff-timberFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-highEff-timberFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-ASHP-highEff-timberFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-ASHP-highEff-timberFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-highEff-timberFloor-s', 'elec', 'energy') = -0.4545455;
coeff_process_praq('heatPump-ASHP-highEff-timberFloor-s', 'heat', 'energy') = 1;
