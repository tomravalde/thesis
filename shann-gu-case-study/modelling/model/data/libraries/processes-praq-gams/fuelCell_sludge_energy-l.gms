* fuelCell_sludge_energy-l
PARAMETER
rate_process_max(P,T);
rate_process_max('fuelCell_sludge_energy-l', 'wint') = 0.015;
rate_process_max('fuelCell_sludge_energy-l', 'sum') = 0.015;
rate_process_max('fuelCell_sludge_energy-l', 'shoulder') = 0.015;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('fuelCell_sludge_energy-l', 'sludge', 'mass') = -160.5652;
coeff_process_praq('fuelCell_sludge_energy-l', 'elec', 'energy') = 1;
coeff_process_praq('fuelCell_sludge_energy-l', 'methane', 'mass') = 0.2231856;
