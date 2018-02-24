* biomass-to-DME
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-to-DME', 'wint') = 3.63;
rate_process_max('biomass-to-DME', 'sum') = 3.63;
rate_process_max('biomass-to-DME', 'shoulder') = 3.63;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-to-DME', 'wood', 'mass') = -6.228506;
coeff_process_praq('biomass-to-DME', 'water', 'mass') = -1.764157;
coeff_process_praq('biomass-to-DME', 'elec', 'energy') = 2.363592;
coeff_process_praq('biomass-to-DME', 'heat', 'energy') = 0.7260527;
coeff_process_praq('biomass-to-DME', 'DME', 'mass') = 1;
coeff_process_praq('biomass-to-DME', 'wastewater', 'mass') = 2.475659;
coeff_process_praq('biomass-to-DME', 'ash', 'mass') = 0.4801681;
