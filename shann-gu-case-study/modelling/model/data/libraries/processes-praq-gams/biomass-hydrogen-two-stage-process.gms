* biomass-hydrogen-two-stage-process
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-hydrogen-two-stage-process', 'wint') = 0.2913;
rate_process_max('biomass-hydrogen-two-stage-process', 'sum') = 0.2913;
rate_process_max('biomass-hydrogen-two-stage-process', 'shoulder') = 0.2913;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-hydrogen-two-stage-process', 'biomass', 'mass') = -93.09;
coeff_process_praq('biomass-hydrogen-two-stage-process', 'elec', 'energy') = -13.752;
coeff_process_praq('biomass-hydrogen-two-stage-process', 'hydrogen', 'mass') = 1;
coeff_process_praq('biomass-hydrogen-two-stage-process', 'CO2', 'mass') = 13.04;
coeff_process_praq('biomass-hydrogen-two-stage-process', 'methane', 'mass') = 0.45;
