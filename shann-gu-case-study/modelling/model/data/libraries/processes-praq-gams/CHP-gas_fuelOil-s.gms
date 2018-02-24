* CHP-gas_fuelOil-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-gas_fuelOil-s', 'wint') = 0.5;
rate_process_max('CHP-gas_fuelOil-s', 'sum') = 0.5;
rate_process_max('CHP-gas_fuelOil-s', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-gas_fuelOil-s', 'fuelOil', 'mass') = -0.06943333;
coeff_process_praq('CHP-gas_fuelOil-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-gas_fuelOil-s', 'heat', 'energy') = 1.2;
coeff_process_praq('CHP-gas_fuelOil-s', 'CO2', 'mass') = 0.247;
