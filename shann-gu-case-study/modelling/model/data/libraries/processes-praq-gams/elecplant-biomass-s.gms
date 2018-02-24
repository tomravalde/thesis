* elecplant-biomass-s
PARAMETER
rate_process_max(P,T);
rate_process_max('elecplant-biomass-s', 'wint') = 0.04;
rate_process_max('elecplant-biomass-s', 'sum') = 0.04;
rate_process_max('elecplant-biomass-s', 'shoulder') = 0.04;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('elecplant-biomass-s', 'biomass', 'mass') = -0.32;
coeff_process_praq('elecplant-biomass-s', 'elec', 'energy') = 1;
coeff_process_praq('elecplant-biomass-s', 'water', 'mass') = -0.68;
coeff_process_praq('elecplant-biomass-s', 'heat', 'energy') = 3;
coeff_process_praq('elecplant-biomass-s', 'ash', 'mass') = 0.032;
