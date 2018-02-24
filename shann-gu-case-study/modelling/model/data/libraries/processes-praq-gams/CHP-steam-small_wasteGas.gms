* CHP-steam-small_wasteGas
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_wasteGas', 'wint') = 0.5;
rate_process_max('CHP-steam-small_wasteGas', 'sum') = 0.5;
rate_process_max('CHP-steam-small_wasteGas', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_wasteGas', 'gasLandfill', 'energy') = -0.7208;
coeff_process_praq('CHP-steam-small_wasteGas', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_wasteGas', 'heat', 'energy') = 15;
coeff_process_praq('CHP-steam-small_wasteGas', 'CO2', 'mass') = 1.188;
