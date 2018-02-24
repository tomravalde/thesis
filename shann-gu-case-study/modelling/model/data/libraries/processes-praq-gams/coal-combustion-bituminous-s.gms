* coal-combustion-bituminous-s
PARAMETER
rate_process_max(P,T);
rate_process_max('coal-combustion-bituminous-s', 'wint') = 8.7;
rate_process_max('coal-combustion-bituminous-s', 'sum') = 8.7;
rate_process_max('coal-combustion-bituminous-s', 'shoulder') = 8.7;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('coal-combustion-bituminous-s', 'coal', 'mass') = -0.1333333;
coeff_process_praq('coal-combustion-bituminous-s', 'elec', 'energy') = 1;
coeff_process_praq('coal-combustion-bituminous-s', 'heat', 'energy') = 2.333333;
coeff_process_praq('coal-combustion-bituminous-s', 'water', 'mass') = -0.8666667;
coeff_process_praq('coal-combustion-bituminous-s', 'CO2', 'mass') = 0.3083333;
coeff_process_praq('coal-combustion-bituminous-s', 'ash', 'mass') = 0.01333333;
