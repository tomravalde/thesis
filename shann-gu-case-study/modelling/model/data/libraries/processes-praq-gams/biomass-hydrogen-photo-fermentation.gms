* biomass-hydrogen-photo-fermentation
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-hydrogen-photo-fermentation', 'wint') = 0.2913;
rate_process_max('biomass-hydrogen-photo-fermentation', 'sum') = 0.2913;
rate_process_max('biomass-hydrogen-photo-fermentation', 'shoulder') = 0.2913;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-hydrogen-photo-fermentation', 'biomass', 'mass') = -99.68;
coeff_process_praq('biomass-hydrogen-photo-fermentation', 'elec', 'energy') = -14.004;
coeff_process_praq('biomass-hydrogen-photo-fermentation', 'hydrogen', 'mass') = 1;
coeff_process_praq('biomass-hydrogen-photo-fermentation', 'CO2', 'mass') = 13.44;
coeff_process_praq('biomass-hydrogen-photo-fermentation', 'methane', 'mass') = 0.67;
