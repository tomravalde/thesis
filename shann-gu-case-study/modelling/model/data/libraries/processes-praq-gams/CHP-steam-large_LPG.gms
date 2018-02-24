* CHP-steam-large_LPG
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_LPG', 'wint') = 500;
rate_process_max('CHP-steam-large_LPG', 'sum') = 500;
rate_process_max('CHP-steam-large_LPG', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_LPG', 'LPG', 'mass') = -0.05375;
coeff_process_praq('CHP-steam-large_LPG', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_LPG', 'heat', 'energy') = 1;
coeff_process_praq('CHP-steam-large_LPG', 'CO2', 'mass') = 0.15775;
