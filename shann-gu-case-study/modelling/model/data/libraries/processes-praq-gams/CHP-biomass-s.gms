* CHP-biomass-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-biomass-s', 'wint') = 0.005;
rate_process_max('CHP-biomass-s', 'sum') = 0.005;
rate_process_max('CHP-biomass-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-biomass-s', 'biomass', 'mass') = -0.6153846;
coeff_process_praq('CHP-biomass-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-biomass-s', 'heat', 'energy') = 6.692308;
