* gasification_sludge_hydrogen-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification_sludge_hydrogen-l', 'wint') = 7.7;
rate_process_max('gasification_sludge_hydrogen-l', 'sum') = 7.7;
rate_process_max('gasification_sludge_hydrogen-l', 'shoulder') = 7.7;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification_sludge_hydrogen-l', 'sludge', 'mass') = -0.4548736;
coeff_process_praq('gasification_sludge_hydrogen-l', 'water', 'mass') = -0.9205776;
coeff_process_praq('gasification_sludge_hydrogen-l', 'elec', 'energy') = -1;
coeff_process_praq('gasification_sludge_hydrogen-l', 'slag', 'mass') = 0.1046931;
coeff_process_praq('gasification_sludge_hydrogen-l', 'heat', 'energy') = 0.6389892;
coeff_process_praq('gasification_sludge_hydrogen-l', 'hydrogen', 'mass') = 0.001805054;
coeff_process_praq('gasification_sludge_hydrogen-l', 'CO2', 'mass') = 0.0007220217;
