* coal-combustion-bituminous-l
PARAMETER
rate_process_max(P,T);
rate_process_max('coal-combustion-bituminous-l', 'wint') = 350;
rate_process_max('coal-combustion-bituminous-l', 'sum') = 350;
rate_process_max('coal-combustion-bituminous-l', 'shoulder') = 350;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('coal-combustion-bituminous-l', 'coal', 'mass') = -0.1333333;
coeff_process_praq('coal-combustion-bituminous-l', 'elec', 'energy') = 1;
coeff_process_praq('coal-combustion-bituminous-l', 'heat', 'energy') = 2.333333;
coeff_process_praq('coal-combustion-bituminous-l', 'water', 'mass') = -0.8666667;
coeff_process_praq('coal-combustion-bituminous-l', 'CO2', 'mass') = 0.3083333;
coeff_process_praq('coal-combustion-bituminous-l', 'ash', 'mass') = 0.01333333;
