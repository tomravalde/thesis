* district-cogen-heating
PARAMETER
rate_process_max(P,T);
rate_process_max('district-cogen-heating', 'wint') = 230;
rate_process_max('district-cogen-heating', 'sum') = 230;
rate_process_max('district-cogen-heating', 'shoulder') = 230;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('district-cogen-heating', 'coal', 'mass') = -0.06;
coeff_process_praq('district-cogen-heating', 'elec', 'energy') = 0.4166667;
coeff_process_praq('district-cogen-heating', 'water', 'mass') = -0.1956667;
coeff_process_praq('district-cogen-heating', 'heat', 'energy') = 1;
coeff_process_praq('district-cogen-heating', 'CO2', 'mass') = 0.1576667;
