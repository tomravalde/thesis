* biomass-gasification-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-gasification-s', 'wint') = 0.14;
rate_process_max('biomass-gasification-s', 'sum') = 0.14;
rate_process_max('biomass-gasification-s', 'shoulder') = 0.14;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-gasification-s', 'biomass', 'mass') = -0.02800179;
coeff_process_praq('biomass-gasification-s', 'CO2', 'mass') = 0.008092518;
coeff_process_praq('biomass-gasification-s', 'elec', 'energy') = 1;
coeff_process_praq('biomass-gasification-s', 'heat', 'energy') = 0.1814516;
coeff_process_praq('biomass-gasification-s', 'ash', 'mass') = 0.002240143;
coeff_process_praq('biomass-gasification-s', 'water', 'mass') = -0.46931;
