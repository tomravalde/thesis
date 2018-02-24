* CHP-steam-small_gasNatural
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_gasNatural', 'wint') = 0.5;
rate_process_max('CHP-steam-small_gasNatural', 'sum') = 0.5;
rate_process_max('CHP-steam-small_gasNatural', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_gasNatural', 'gasNatural', 'mass') = -0.3732;
coeff_process_praq('CHP-steam-small_gasNatural', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_gasNatural', 'heat', 'energy') = 15;
coeff_process_praq('CHP-steam-small_gasNatural', 'CO2', 'mass') = 1.022;
