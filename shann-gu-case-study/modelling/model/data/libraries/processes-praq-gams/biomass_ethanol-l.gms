* biomass_ethanol-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass_ethanol-l', 'wint') = 2.22;
rate_process_max('biomass_ethanol-l', 'sum') = 2.22;
rate_process_max('biomass_ethanol-l', 'shoulder') = 2.22;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass_ethanol-l', 'biomass', 'mass') = -4.157161;
coeff_process_praq('biomass_ethanol-l', 'ethanol', 'mass') = 1;
coeff_process_praq('biomass_ethanol-l', 'heat', 'energy') = -2.95057;
coeff_process_praq('biomass_ethanol-l', 'elec', 'energy') = -0.7376426;
coeff_process_praq('biomass_ethanol-l', 'water', 'mass') = -0.7338403;
coeff_process_praq('biomass_ethanol-l', 'wastewater', 'mass') = 0.7338403;
