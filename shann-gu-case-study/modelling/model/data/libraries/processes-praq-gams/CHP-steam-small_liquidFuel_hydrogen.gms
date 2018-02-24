* CHP-steam-small_liquidFuel_hydrogen
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_liquidFuel_hydrogen', 'wint') = 0.5;
rate_process_max('CHP-steam-small_liquidFuel_hydrogen', 'sum') = 0.5;
rate_process_max('CHP-steam-small_liquidFuel_hydrogen', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_liquidFuel_hydrogen', 'hydrogen', 'mass') = -0.1408;
coeff_process_praq('CHP-steam-small_liquidFuel_hydrogen', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_liquidFuel_hydrogen', 'heat', 'energy') = 15;
coeff_process_praq('CHP-steam-small_liquidFuel_hydrogen', 'waterNonPotable', 'mass') = 2.778;
