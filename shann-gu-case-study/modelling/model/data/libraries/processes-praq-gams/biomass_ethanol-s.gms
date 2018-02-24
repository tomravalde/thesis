* biomass_ethanol-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass_ethanol-s', 'wint') = 0.159;
rate_process_max('biomass_ethanol-s', 'sum') = 0.159;
rate_process_max('biomass_ethanol-s', 'shoulder') = 0.159;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass_ethanol-s', 'biomass', 'mass') = -4.157161;
coeff_process_praq('biomass_ethanol-s', 'ethanol', 'mass') = 1;
coeff_process_praq('biomass_ethanol-s', 'heat', 'energy') = -2.95057;
coeff_process_praq('biomass_ethanol-s', 'elec', 'energy') = -0.7376426;
coeff_process_praq('biomass_ethanol-s', 'water', 'mass') = -0.7338403;
coeff_process_praq('biomass_ethanol-s', 'wastewater', 'mass') = 0.7338403;
