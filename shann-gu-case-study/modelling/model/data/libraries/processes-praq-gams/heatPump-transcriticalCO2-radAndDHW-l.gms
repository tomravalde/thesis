* heatPump-transcriticalCO2-radAndDHW-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-transcriticalCO2-radAndDHW-l', 'wint') = 13;
rate_process_max('heatPump-transcriticalCO2-radAndDHW-l', 'sum') = 13;
rate_process_max('heatPump-transcriticalCO2-radAndDHW-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-transcriticalCO2-radAndDHW-l', 'elec', 'energy') = -0.3333333;
coeff_process_praq('heatPump-transcriticalCO2-radAndDHW-l', 'heat', 'energy') = 1;
