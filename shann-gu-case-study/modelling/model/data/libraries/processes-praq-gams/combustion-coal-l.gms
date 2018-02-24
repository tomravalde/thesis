* combustion-coal-l
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-coal-l', 'wint') = 2400;
rate_process_max('combustion-coal-l', 'sum') = 2400;
rate_process_max('combustion-coal-l', 'shoulder') = 2400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-coal-l', 'coal', 'mass') = -0.1212121;
coeff_process_praq('combustion-coal-l', 'elec', 'energy') = 1;
coeff_process_praq('combustion-coal-l', 'heat', 'energy') = 2.030303;
coeff_process_praq('combustion-coal-l', 'water', 'mass') = -0.8666667;
coeff_process_praq('combustion-coal-l', 'CO2', 'mass') = 0.280303;
coeff_process_praq('combustion-coal-l', 'ash', 'mass') = 0.01212121;
