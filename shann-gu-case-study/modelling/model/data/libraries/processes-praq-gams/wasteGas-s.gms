* wasteGas-s
PARAMETER
rate_process_max(P,T);
rate_process_max('wasteGas-s', 'wint') = 0.5;
rate_process_max('wasteGas-s', 'sum') = 0.5;
rate_process_max('wasteGas-s', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wasteGas-s', 'gasLandfill', 'energy') = -0.1201333;
coeff_process_praq('wasteGas-s', 'elec', 'energy') = 1;
coeff_process_praq('wasteGas-s', 'heat', 'energy') = 1.2;
coeff_process_praq('wasteGas-s', 'CO2', 'mass') = 0.198;
