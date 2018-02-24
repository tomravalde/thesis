* CHP-steam-small_fuelOil
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_fuelOil', 'wint') = 0.5;
rate_process_max('CHP-steam-small_fuelOil', 'sum') = 0.5;
rate_process_max('CHP-steam-small_fuelOil', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_fuelOil', 'fuelOil', 'mass') = -0.4166;
coeff_process_praq('CHP-steam-small_fuelOil', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_fuelOil', 'heat', 'energy') = 15;
coeff_process_praq('CHP-steam-small_fuelOil', 'CO2', 'mass') = 1.482;
