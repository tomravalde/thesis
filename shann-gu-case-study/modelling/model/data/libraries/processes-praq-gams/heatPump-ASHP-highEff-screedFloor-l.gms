* heatPump-ASHP-highEff-screedFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-highEff-screedFloor-l', 'wint') = 13;
rate_process_max('heatPump-ASHP-highEff-screedFloor-l', 'sum') = 13;
rate_process_max('heatPump-ASHP-highEff-screedFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-highEff-screedFloor-l', 'elec', 'energy') = -0.3030303;
coeff_process_praq('heatPump-ASHP-highEff-screedFloor-l', 'heat', 'energy') = 1;
