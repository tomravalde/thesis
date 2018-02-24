* biomass_biogas-biodiesel
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass_biogas-biodiesel', 'wint') = 0.158;
rate_process_max('biomass_biogas-biodiesel', 'sum') = 0.158;
rate_process_max('biomass_biogas-biodiesel', 'shoulder') = 0.158;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass_biogas-biodiesel', 'biomass', 'mass') = -2.018464;
coeff_process_praq('biomass_biogas-biodiesel', 'water', 'mass') = -0.2112154;
coeff_process_praq('biomass_biogas-biodiesel', 'wastewater', 'mass') = 0.2112154;
coeff_process_praq('biomass_biogas-biodiesel', 'biodiesel', 'mass') = 1;
coeff_process_praq('biomass_biogas-biodiesel', 'ethanol', 'mass') = 0.2434058;
coeff_process_praq('biomass_biogas-biodiesel', 'heat', 'energy') = -5.037983;
