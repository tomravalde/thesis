* combustion-biomass-l
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-biomass-l', 'wint') = 350;
rate_process_max('combustion-biomass-l', 'sum') = 350;
rate_process_max('combustion-biomass-l', 'shoulder') = 350;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-biomass-l', 'biomass', 'mass') = -0.2666667;
coeff_process_praq('combustion-biomass-l', 'elec', 'energy') = 1;
coeff_process_praq('combustion-biomass-l', 'heat', 'energy') = 2.333333;
coeff_process_praq('combustion-biomass-l', 'water', 'mass') = -0.7;
coeff_process_praq('combustion-biomass-l', 'ash', 'mass') = 0.02666667;
