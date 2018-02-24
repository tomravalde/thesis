* biomass-gasification-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-gasification-l', 'wint') = 130;
rate_process_max('biomass-gasification-l', 'sum') = 130;
rate_process_max('biomass-gasification-l', 'shoulder') = 130;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-gasification-l', 'biomass', 'mass') = -0.02800179;
coeff_process_praq('biomass-gasification-l', 'CO2', 'mass') = 0.008092518;
coeff_process_praq('biomass-gasification-l', 'elec', 'energy') = 1;
coeff_process_praq('biomass-gasification-l', 'heat', 'energy') = 0.1814516;
coeff_process_praq('biomass-gasification-l', 'ash', 'mass') = 0.002240143;
coeff_process_praq('biomass-gasification-l', 'water', 'mass') = -0.46931;
