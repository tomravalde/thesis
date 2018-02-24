* CHP-steam-small_liquidFuel
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_liquidFuel', 'wint') = 0.5;
rate_process_max('CHP-steam-small_liquidFuel', 'sum') = 0.5;
rate_process_max('CHP-steam-small_liquidFuel', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_liquidFuel', 'gasoline', 'mass') = -20;
coeff_process_praq('CHP-steam-small_liquidFuel', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_liquidFuel', 'heat', 'energy') = 15;
coeff_process_praq('CHP-steam-small_liquidFuel', 'CO2', 'mass') = 1.386;
