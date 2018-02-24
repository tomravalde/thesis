* CHP-biomass-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-biomass-l', 'wint') = 1;
rate_process_max('CHP-biomass-l', 'sum') = 1;
rate_process_max('CHP-biomass-l', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-biomass-l', 'biomass', 'mass') = -0.6153846;
coeff_process_praq('CHP-biomass-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-biomass-l', 'heat', 'energy') = 6.692308;
