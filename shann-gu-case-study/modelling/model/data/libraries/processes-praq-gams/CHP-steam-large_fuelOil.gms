* CHP-steam-large_fuelOil
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_fuelOil', 'wint') = 500;
rate_process_max('CHP-steam-large_fuelOil', 'sum') = 500;
rate_process_max('CHP-steam-large_fuelOil', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_fuelOil', 'fuelOil', 'mass') = -0.052075;
coeff_process_praq('CHP-steam-large_fuelOil', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_fuelOil', 'heat', 'energy') = 1;
coeff_process_praq('CHP-steam-large_fuelOil', 'CO2', 'mass') = 0.18525;
