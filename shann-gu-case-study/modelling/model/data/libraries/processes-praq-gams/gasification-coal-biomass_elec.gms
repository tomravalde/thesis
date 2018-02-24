* gasification-coal-biomass_elec
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal-biomass_elec', 'wint') = 422.59;
rate_process_max('gasification-coal-biomass_elec', 'sum') = 422.59;
rate_process_max('gasification-coal-biomass_elec', 'shoulder') = 422.59;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal-biomass_elec', 'coal', 'mass') = -0.09338967;
coeff_process_praq('gasification-coal-biomass_elec', 'biomass', 'mass') = -0.02334742;
coeff_process_praq('gasification-coal-biomass_elec', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal-biomass_elec', 'water', 'mass') = -0.0001242685;
coeff_process_praq('gasification-coal-biomass_elec', 'CO2', 'mass') = 0.01838889;
