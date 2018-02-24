* heatPump-transcriticalCO2-screedFloor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-transcriticalCO2-screedFloor-l', 'wint') = 13;
rate_process_max('heatPump-transcriticalCO2-screedFloor-l', 'sum') = 13;
rate_process_max('heatPump-transcriticalCO2-screedFloor-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-transcriticalCO2-screedFloor-l', 'elec', 'energy') = -0.3030303;
coeff_process_praq('heatPump-transcriticalCO2-screedFloor-l', 'heat', 'energy') = 1;
