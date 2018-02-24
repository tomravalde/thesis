* CHP-reciprocatingEngine_wasteGas-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-reciprocatingEngine_wasteGas-l', 'wint') = 10;
rate_process_max('CHP-reciprocatingEngine_wasteGas-l', 'sum') = 10;
rate_process_max('CHP-reciprocatingEngine_wasteGas-l', 'shoulder') = 10;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-reciprocatingEngine_wasteGas-l', 'gasLandfill', 'energy') = -2.941176;
coeff_process_praq('CHP-reciprocatingEngine_wasteGas-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-reciprocatingEngine_wasteGas-l', 'heat', 'energy') = 1.308824;
coeff_process_praq('CHP-reciprocatingEngine_wasteGas-l', 'CO2', 'mass') = 0.1747059;
