* wasteGas-l
PARAMETER
rate_process_max(P,T);
rate_process_max('wasteGas-l', 'wint') = 300;
rate_process_max('wasteGas-l', 'sum') = 300;
rate_process_max('wasteGas-l', 'shoulder') = 300;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wasteGas-l', 'gasLandfill', 'energy') = -0.1201333;
coeff_process_praq('wasteGas-l', 'elec', 'energy') = 1;
coeff_process_praq('wasteGas-l', 'heat', 'energy') = 1.2;
coeff_process_praq('wasteGas-l', 'CO2', 'mass') = 0.198;
