* combustion-biomass-s
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-biomass-s', 'wint') = 8.7;
rate_process_max('combustion-biomass-s', 'sum') = 8.7;
rate_process_max('combustion-biomass-s', 'shoulder') = 8.7;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-biomass-s', 'biomass', 'mass') = -0.2666667;
coeff_process_praq('combustion-biomass-s', 'elec', 'energy') = 1;
coeff_process_praq('combustion-biomass-s', 'heat', 'energy') = 2.333333;
coeff_process_praq('combustion-biomass-s', 'water', 'mass') = -0.7;
coeff_process_praq('combustion-biomass-s', 'ash', 'mass') = 0.02666667;
