* CHP-steam-large_gasNatural
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_gasNatural', 'wint') = 500;
rate_process_max('CHP-steam-large_gasNatural', 'sum') = 500;
rate_process_max('CHP-steam-large_gasNatural', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_gasNatural', 'gasNatural', 'mass') = -0.04665;
coeff_process_praq('CHP-steam-large_gasNatural', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_gasNatural', 'heat', 'energy') = 1;
coeff_process_praq('CHP-steam-large_gasNatural', 'CO2', 'mass') = 0.12775;
