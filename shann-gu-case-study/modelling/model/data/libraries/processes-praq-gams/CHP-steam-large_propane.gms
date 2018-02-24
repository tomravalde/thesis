* CHP-steam-large_propane
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_propane', 'wint') = 500;
rate_process_max('CHP-steam-large_propane', 'sum') = 500;
rate_process_max('CHP-steam-large_propane', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_propane', 'propane', 'mass') = -0.0504;
coeff_process_praq('CHP-steam-large_propane', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_propane', 'heat', 'energy') = 1;
coeff_process_praq('CHP-steam-large_propane', 'CO2', 'mass') = 0.1475;
