* gasification-coal_elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal_elec-s', 'wint') = 400;
rate_process_max('gasification-coal_elec-s', 'sum') = 400;
rate_process_max('gasification-coal_elec-s', 'shoulder') = 400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal_elec-s', 'coal', 'mass') = -0.1172323;
coeff_process_praq('gasification-coal_elec-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal_elec-s', 'water', 'mass') = -0.4941042;
coeff_process_praq('gasification-coal_elec-s', 'CO2', 'mass') = 0.02114444;
