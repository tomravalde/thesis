* gasification-coal-biomass_elec-hydrogen
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal-biomass_elec-hydrogen', 'wint') = 304.87;
rate_process_max('gasification-coal-biomass_elec-hydrogen', 'sum') = 304.87;
rate_process_max('gasification-coal-biomass_elec-hydrogen', 'shoulder') = 304.87;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal-biomass_elec-hydrogen', 'coal', 'mass') = -0.120783;
coeff_process_praq('gasification-coal-biomass_elec-hydrogen', 'biomass', 'mass') = -0.03019575;
coeff_process_praq('gasification-coal-biomass_elec-hydrogen', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal-biomass_elec-hydrogen', 'water', 'mass') = -0.4690524;
coeff_process_praq('gasification-coal-biomass_elec-hydrogen', 'hydrogen', 'mass') = 0.004619841;
coeff_process_praq('gasification-coal-biomass_elec-hydrogen', 'CO2', 'mass') = 0.04389167;
