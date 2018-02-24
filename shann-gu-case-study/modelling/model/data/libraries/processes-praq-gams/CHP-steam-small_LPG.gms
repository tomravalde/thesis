* CHP-steam-small_LPG
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_LPG', 'wint') = 0.5;
rate_process_max('CHP-steam-small_LPG', 'sum') = 0.5;
rate_process_max('CHP-steam-small_LPG', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_LPG', 'LPG', 'mass') = -0.431;
coeff_process_praq('CHP-steam-small_LPG', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_LPG', 'heat', 'energy') = 15;
coeff_process_praq('CHP-steam-small_LPG', 'CO2', 'mass') = 1.262;
