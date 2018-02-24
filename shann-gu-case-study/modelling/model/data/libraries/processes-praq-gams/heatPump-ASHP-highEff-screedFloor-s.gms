* heatPump-ASHP-highEff-screedFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-highEff-screedFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-ASHP-highEff-screedFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-ASHP-highEff-screedFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-highEff-screedFloor-s', 'elec', 'energy') = -0.3030303;
coeff_process_praq('heatPump-ASHP-highEff-screedFloor-s', 'heat', 'energy') = 1;
