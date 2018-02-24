* heatPump-ASHP-highEff-timberFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-highEff-timberFloor-l', 'wint') = 13;
rate_process_max('heatPump-ASHP-highEff-timberFloor-l', 'sum') = 13;
rate_process_max('heatPump-ASHP-highEff-timberFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-highEff-timberFloor-l', 'elec', 'energy') = -0.4545455;
coeff_process_praq('heatPump-ASHP-highEff-timberFloor-l', 'heat', 'energy') = 1;
