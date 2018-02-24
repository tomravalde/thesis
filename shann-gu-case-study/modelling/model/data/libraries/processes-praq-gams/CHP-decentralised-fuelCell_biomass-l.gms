* CHP-decentralised-fuelCell_biomass-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-decentralised-fuelCell_biomass-l', 'wint') = 3;
rate_process_max('CHP-decentralised-fuelCell_biomass-l', 'sum') = 3;
rate_process_max('CHP-decentralised-fuelCell_biomass-l', 'shoulder') = 3;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-decentralised-fuelCell_biomass-l', 'biomass', 'mass') = -0.1781077;
coeff_process_praq('CHP-decentralised-fuelCell_biomass-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-decentralised-fuelCell_biomass-l', 'heat', 'energy') = 0.8449782;
