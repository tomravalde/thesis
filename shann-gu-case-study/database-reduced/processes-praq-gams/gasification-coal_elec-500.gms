* gasification-coal_elec-500
PARAMETER
rate_process_max(P);
rate_process_max('gasification-coal_elec-500') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal_elec-500', 'coal', 'mass') = -0.1172323;
coeff_process_praq('gasification-coal_elec-500', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal_elec-500', 'water', 'mass') = -0.4941042;
coeff_process_praq('gasification-coal_elec-500', 'water', 'energy') = 0;
coeff_process_praq('gasification-coal_elec-500', 'water', 'contam') = -0.001976417;
coeff_process_praq('gasification-coal_elec-500', 'CO2', 'mass') = 0.02114444;
