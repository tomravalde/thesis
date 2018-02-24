* CHP-steam-large_wasteGas
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_wasteGas', 'wint') = 500;
rate_process_max('CHP-steam-large_wasteGas', 'sum') = 500;
rate_process_max('CHP-steam-large_wasteGas', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_wasteGas', 'gasLandfill', 'energy') = -0.09;
coeff_process_praq('CHP-steam-large_wasteGas', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_wasteGas', 'heat', 'energy') = 1;
coeff_process_praq('CHP-steam-large_wasteGas', 'CO2', 'mass') = 0.1485;
