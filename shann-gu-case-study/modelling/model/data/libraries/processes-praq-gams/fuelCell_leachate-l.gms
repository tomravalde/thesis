* fuelCell_leachate-l
PARAMETER
rate_process_max(P,T);
rate_process_max('fuelCell_leachate-l', 'wint') = 0.015;
rate_process_max('fuelCell_leachate-l', 'sum') = 0.015;
rate_process_max('fuelCell_leachate-l', 'shoulder') = 0.015;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('fuelCell_leachate-l', 'leachate', 'mass') = -2906977;
coeff_process_praq('fuelCell_leachate-l', 'elec', 'energy') = 1;
coeff_process_praq('fuelCell_leachate-l', 'wastewater', 'mass') = 2906977;
