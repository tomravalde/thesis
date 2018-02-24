* gasification_sludge_hydrogen-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification_sludge_hydrogen-s', 'wint') = 0.62;
rate_process_max('gasification_sludge_hydrogen-s', 'sum') = 0.62;
rate_process_max('gasification_sludge_hydrogen-s', 'shoulder') = 0.62;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification_sludge_hydrogen-s', 'sludge', 'mass') = -0.4548736;
coeff_process_praq('gasification_sludge_hydrogen-s', 'water', 'mass') = -0.9205776;
coeff_process_praq('gasification_sludge_hydrogen-s', 'elec', 'energy') = -1;
coeff_process_praq('gasification_sludge_hydrogen-s', 'slag', 'mass') = 0.1046931;
coeff_process_praq('gasification_sludge_hydrogen-s', 'heat', 'energy') = 0.6389892;
coeff_process_praq('gasification_sludge_hydrogen-s', 'hydrogen', 'mass') = 0.001805054;
coeff_process_praq('gasification_sludge_hydrogen-s', 'CO2', 'mass') = 0.0007220217;
