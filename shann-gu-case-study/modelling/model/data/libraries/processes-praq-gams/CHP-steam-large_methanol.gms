* CHP-steam-large_methanol
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_methanol', 'wint') = 500;
rate_process_max('CHP-steam-large_methanol', 'sum') = 500;
rate_process_max('CHP-steam-large_methanol', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_methanol', 'methanol', 'mass') = -0.127;
coeff_process_praq('CHP-steam-large_methanol', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_methanol', 'heat', 'energy') = 1;
coeff_process_praq('CHP-steam-large_methanol', 'CO2', 'mass') = 0.17425;
