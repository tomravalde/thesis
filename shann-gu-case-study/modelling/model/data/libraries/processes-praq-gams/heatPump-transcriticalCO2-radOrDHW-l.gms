* heatPump-transcriticalCO2-radOrDHW-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-transcriticalCO2-radOrDHW-l', 'wint') = 13;
rate_process_max('heatPump-transcriticalCO2-radOrDHW-l', 'sum') = 13;
rate_process_max('heatPump-transcriticalCO2-radOrDHW-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-transcriticalCO2-radOrDHW-l', 'elec', 'energy') = -0.2380952;
coeff_process_praq('heatPump-transcriticalCO2-radOrDHW-l', 'heat', 'energy') = 1;
