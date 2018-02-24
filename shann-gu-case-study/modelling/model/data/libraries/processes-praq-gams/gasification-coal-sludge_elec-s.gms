* gasification-coal-sludge_elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal-sludge_elec-s', 'wint') = 400;
rate_process_max('gasification-coal-sludge_elec-s', 'sum') = 400;
rate_process_max('gasification-coal-sludge_elec-s', 'shoulder') = 400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal-sludge_elec-s', 'coal', 'mass') = -0.1014183;
coeff_process_praq('gasification-coal-sludge_elec-s', 'sludge', 'mass') = -0.02535457;
coeff_process_praq('gasification-coal-sludge_elec-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal-sludge_elec-s', 'water', 'mass') = -0.4682672;
coeff_process_praq('gasification-coal-sludge_elec-s', 'CO2', 'mass') = 0.01896944;
