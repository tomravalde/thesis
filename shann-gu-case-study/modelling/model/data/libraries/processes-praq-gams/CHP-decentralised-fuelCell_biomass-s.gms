* CHP-decentralised-fuelCell_biomass-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-decentralised-fuelCell_biomass-s', 'wint') = 0.005;
rate_process_max('CHP-decentralised-fuelCell_biomass-s', 'sum') = 0.005;
rate_process_max('CHP-decentralised-fuelCell_biomass-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-decentralised-fuelCell_biomass-s', 'biomass', 'mass') = -0.1781077;
coeff_process_praq('CHP-decentralised-fuelCell_biomass-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-decentralised-fuelCell_biomass-s', 'heat', 'energy') = 0.8449782;
