* district-cogen-heating-230
PARAMETER
rate_process_max(P);
rate_process_max('district-cogen-heating-230') = 230;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('district-cogen-heating-230', 'fuel', 'mass') = -1.666667;
coeff_process_praq('district-cogen-heating-230', 'elec', 'energy') = 0.4166667;
coeff_process_praq('district-cogen-heating-230', 'water', 'mass') = -0.1956667;
coeff_process_praq('district-cogen-heating-230', 'water', 'energy') = 0;
coeff_process_praq('district-cogen-heating-230', 'water', 'contam') = -0.0007826668;
coeff_process_praq('district-cogen-heating-230', 'heat', 'energy') = 1;
coeff_process_praq('district-cogen-heating-230', 'CO2', 'mass') = 0.1576667;
