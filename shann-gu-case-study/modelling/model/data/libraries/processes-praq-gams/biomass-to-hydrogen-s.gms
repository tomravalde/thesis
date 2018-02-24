* biomass-to-hydrogen-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-to-hydrogen-s', 'wint') = 1.58;
rate_process_max('biomass-to-hydrogen-s', 'sum') = 1.58;
rate_process_max('biomass-to-hydrogen-s', 'shoulder') = 1.58;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-to-hydrogen-s', 'wood', 'mass') = -31.57691;
coeff_process_praq('biomass-to-hydrogen-s', 'water', 'mass') = -9.460287;
coeff_process_praq('biomass-to-hydrogen-s', 'elec', 'energy') = -6.570941;
coeff_process_praq('biomass-to-hydrogen-s', 'heat', 'energy') = 26.82495;
coeff_process_praq('biomass-to-hydrogen-s', 'hydrogen', 'mass') = 1;
coeff_process_praq('biomass-to-hydrogen-s', 'wastewater', 'mass') = 8.563348;
coeff_process_praq('biomass-to-hydrogen-s', 'ash', 'mass') = 2.434328;
