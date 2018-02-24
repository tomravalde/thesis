* biomass-pyrolysis-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-pyrolysis-s', 'wint') = 1;
rate_process_max('biomass-pyrolysis-s', 'sum') = 1;
rate_process_max('biomass-pyrolysis-s', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-pyrolysis-s', 'biooil', 'mass') = 1;
coeff_process_praq('biomass-pyrolysis-s', 'biomass', 'mass') = -2.797203;
coeff_process_praq('biomass-pyrolysis-s', 'water', 'mass') = -251.7483;
coeff_process_praq('biomass-pyrolysis-s', 'elec', 'energy') = -2.517483;
coeff_process_praq('biomass-pyrolysis-s', 'gasNatural', 'mass') = -2.84965e-05;
coeff_process_praq('biomass-pyrolysis-s', 'CO2', 'mass') = 0.3003497;
coeff_process_praq('biomass-pyrolysis-s', 'slag', 'mass') = 0.6993007;
