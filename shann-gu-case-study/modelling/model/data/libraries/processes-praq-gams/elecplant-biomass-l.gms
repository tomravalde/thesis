* elecplant-biomass-l
PARAMETER
rate_process_max(P,T);
rate_process_max('elecplant-biomass-l', 'wint') = 740;
rate_process_max('elecplant-biomass-l', 'sum') = 740;
rate_process_max('elecplant-biomass-l', 'shoulder') = 740;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('elecplant-biomass-l', 'biomass', 'mass') = -0.32;
coeff_process_praq('elecplant-biomass-l', 'elec', 'energy') = 1;
coeff_process_praq('elecplant-biomass-l', 'water', 'mass') = -0.68;
coeff_process_praq('elecplant-biomass-l', 'heat', 'energy') = 3;
coeff_process_praq('elecplant-biomass-l', 'ash', 'mass') = 0.032;
