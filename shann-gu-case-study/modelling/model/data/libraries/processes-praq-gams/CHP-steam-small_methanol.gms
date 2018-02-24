* CHP-steam-small_methanol
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_methanol', 'wint') = 0.5;
rate_process_max('CHP-steam-small_methanol', 'sum') = 0.5;
rate_process_max('CHP-steam-small_methanol', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_methanol', 'methanol', 'mass') = -1.016;
coeff_process_praq('CHP-steam-small_methanol', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_methanol', 'heat', 'energy') = 15;
coeff_process_praq('CHP-steam-small_methanol', 'CO2', 'mass') = 1.394;
