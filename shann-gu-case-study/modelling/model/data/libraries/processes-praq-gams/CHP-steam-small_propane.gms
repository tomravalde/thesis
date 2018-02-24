* CHP-steam-small_propane
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_propane', 'wint') = 0.5;
rate_process_max('CHP-steam-small_propane', 'sum') = 0.5;
rate_process_max('CHP-steam-small_propane', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_propane', 'propane', 'mass') = -0.4032;
coeff_process_praq('CHP-steam-small_propane', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_propane', 'heat', 'energy') = 15;
coeff_process_praq('CHP-steam-small_propane', 'CO2', 'mass') = 1.18;
