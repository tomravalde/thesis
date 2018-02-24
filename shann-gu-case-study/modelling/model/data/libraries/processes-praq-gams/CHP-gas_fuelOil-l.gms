* CHP-gas_fuelOil-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-gas_fuelOil-l', 'wint') = 300;
rate_process_max('CHP-gas_fuelOil-l', 'sum') = 300;
rate_process_max('CHP-gas_fuelOil-l', 'shoulder') = 300;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-gas_fuelOil-l', 'fuelOil', 'mass') = -0.06943333;
coeff_process_praq('CHP-gas_fuelOil-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-gas_fuelOil-l', 'heat', 'energy') = 1.2;
coeff_process_praq('CHP-gas_fuelOil-l', 'CO2', 'mass') = 0.247;
