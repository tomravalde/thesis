* gasification-coal-sludge_elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal-sludge_elec-l', 'wint') = 500;
rate_process_max('gasification-coal-sludge_elec-l', 'sum') = 500;
rate_process_max('gasification-coal-sludge_elec-l', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal-sludge_elec-l', 'coal', 'mass') = -0.1014183;
coeff_process_praq('gasification-coal-sludge_elec-l', 'sludge', 'mass') = -0.02535457;
coeff_process_praq('gasification-coal-sludge_elec-l', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal-sludge_elec-l', 'water', 'mass') = -0.4682672;
coeff_process_praq('gasification-coal-sludge_elec-l', 'CO2', 'mass') = 0.01896944;
