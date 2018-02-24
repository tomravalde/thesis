* gasification-coal_elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal_elec-l', 'wint') = 500;
rate_process_max('gasification-coal_elec-l', 'sum') = 500;
rate_process_max('gasification-coal_elec-l', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal_elec-l', 'coal', 'mass') = -0.1172323;
coeff_process_praq('gasification-coal_elec-l', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal_elec-l', 'water', 'mass') = -0.4941042;
coeff_process_praq('gasification-coal_elec-l', 'CO2', 'mass') = 0.02114444;
