* heatPump-transcriticalCO2-screedFloor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-transcriticalCO2-screedFloor-s', 'wint') = 0.005;
rate_process_max('heatPump-transcriticalCO2-screedFloor-s', 'sum') = 0.005;
rate_process_max('heatPump-transcriticalCO2-screedFloor-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-transcriticalCO2-screedFloor-s', 'elec', 'energy') = -0.3030303;
coeff_process_praq('heatPump-transcriticalCO2-screedFloor-s', 'heat', 'energy') = 1;
