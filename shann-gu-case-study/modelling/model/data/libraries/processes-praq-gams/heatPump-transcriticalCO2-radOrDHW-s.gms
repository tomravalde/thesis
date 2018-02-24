* heatPump-transcriticalCO2-radOrDHW-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-transcriticalCO2-radOrDHW-s', 'wint') = 0.005;
rate_process_max('heatPump-transcriticalCO2-radOrDHW-s', 'sum') = 0.005;
rate_process_max('heatPump-transcriticalCO2-radOrDHW-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-transcriticalCO2-radOrDHW-s', 'elec', 'energy') = -0.2380952;
coeff_process_praq('heatPump-transcriticalCO2-radOrDHW-s', 'heat', 'energy') = 1;
