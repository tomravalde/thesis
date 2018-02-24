* biomass-hydrogen-dark-fermentation
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-hydrogen-dark-fermentation', 'wint') = 0.2913;
rate_process_max('biomass-hydrogen-dark-fermentation', 'sum') = 0.2913;
rate_process_max('biomass-hydrogen-dark-fermentation', 'shoulder') = 0.2913;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-hydrogen-dark-fermentation', 'biomass', 'mass') = -218.45;
coeff_process_praq('biomass-hydrogen-dark-fermentation', 'elec', 'energy') = -20.88;
coeff_process_praq('biomass-hydrogen-dark-fermentation', 'hydrogen', 'mass') = 1;
coeff_process_praq('biomass-hydrogen-dark-fermentation', 'CO2', 'mass') = 24.59;
coeff_process_praq('biomass-hydrogen-dark-fermentation', 'methane', 'mass') = 6.75;
