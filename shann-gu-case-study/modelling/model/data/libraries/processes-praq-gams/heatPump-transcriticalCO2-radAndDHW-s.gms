* heatPump-transcriticalCO2-radAndDHW-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-transcriticalCO2-radAndDHW-s', 'wint') = 0.005;
rate_process_max('heatPump-transcriticalCO2-radAndDHW-s', 'sum') = 0.005;
rate_process_max('heatPump-transcriticalCO2-radAndDHW-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-transcriticalCO2-radAndDHW-s', 'elec', 'energy') = -0.3333333;
coeff_process_praq('heatPump-transcriticalCO2-radAndDHW-s', 'heat', 'energy') = 1;
