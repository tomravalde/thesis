* biomass-pyrolysis-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-pyrolysis-l', 'wint') = 4;
rate_process_max('biomass-pyrolysis-l', 'sum') = 4;
rate_process_max('biomass-pyrolysis-l', 'shoulder') = 4;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-pyrolysis-l', 'biooil', 'mass') = 1;
coeff_process_praq('biomass-pyrolysis-l', 'biomass', 'mass') = -2.797203;
coeff_process_praq('biomass-pyrolysis-l', 'water', 'mass') = -251.7483;
coeff_process_praq('biomass-pyrolysis-l', 'elec', 'energy') = -2.517483;
coeff_process_praq('biomass-pyrolysis-l', 'gasNatural', 'mass') = -2.84965e-05;
coeff_process_praq('biomass-pyrolysis-l', 'CO2', 'mass') = 0.3003497;
coeff_process_praq('biomass-pyrolysis-l', 'slag', 'mass') = 0.6993007;
