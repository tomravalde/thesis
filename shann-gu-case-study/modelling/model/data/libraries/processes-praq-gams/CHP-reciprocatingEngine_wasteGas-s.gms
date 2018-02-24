* CHP-reciprocatingEngine_wasteGas-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-reciprocatingEngine_wasteGas-s', 'wint') = 0.005;
rate_process_max('CHP-reciprocatingEngine_wasteGas-s', 'sum') = 0.005;
rate_process_max('CHP-reciprocatingEngine_wasteGas-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-reciprocatingEngine_wasteGas-s', 'gasLandfill', 'energy') = -2.941176;
coeff_process_praq('CHP-reciprocatingEngine_wasteGas-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-reciprocatingEngine_wasteGas-s', 'heat', 'energy') = 1.308824;
coeff_process_praq('CHP-reciprocatingEngine_wasteGas-s', 'CO2', 'mass') = 0.1747059;
