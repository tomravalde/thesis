* CHP-steam-large_hydrogen
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_hydrogen', 'wint') = 500;
rate_process_max('CHP-steam-large_hydrogen', 'sum') = 500;
rate_process_max('CHP-steam-large_hydrogen', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_hydrogen', 'hydrogen', 'mass') = -0.0176;
coeff_process_praq('CHP-steam-large_hydrogen', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_hydrogen', 'heat', 'energy') = 1;
coeff_process_praq('CHP-steam-large_hydrogen', 'waterNonPotable', 'mass') = 0.3475;
