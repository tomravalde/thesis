* CHP-steam-large_liquidFuel
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_liquidFuel', 'wint') = 500;
rate_process_max('CHP-steam-large_liquidFuel', 'sum') = 500;
rate_process_max('CHP-steam-large_liquidFuel', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_liquidFuel', 'gasoline', 'mass') = -2.5;
coeff_process_praq('CHP-steam-large_liquidFuel', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_liquidFuel', 'heat', 'energy') = 1;
coeff_process_praq('CHP-steam-large_liquidFuel', 'CO2', 'mass') = 0.17325;
