* combustion-coal-s
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-coal-s', 'wint') = 400;
rate_process_max('combustion-coal-s', 'sum') = 400;
rate_process_max('combustion-coal-s', 'shoulder') = 400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-coal-s', 'coal', 'mass') = -0.1212121;
coeff_process_praq('combustion-coal-s', 'elec', 'energy') = 1;
coeff_process_praq('combustion-coal-s', 'heat', 'energy') = 2.030303;
coeff_process_praq('combustion-coal-s', 'water', 'mass') = -0.8666667;
coeff_process_praq('combustion-coal-s', 'CO2', 'mass') = 0.280303;
coeff_process_praq('combustion-coal-s', 'ash', 'mass') = 0.01212121;
