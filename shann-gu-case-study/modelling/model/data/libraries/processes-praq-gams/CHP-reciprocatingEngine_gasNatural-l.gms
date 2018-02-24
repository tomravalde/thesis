* CHP-reciprocatingEngine_gasNatural-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-reciprocatingEngine_gasNatural-l', 'wint') = 10;
rate_process_max('CHP-reciprocatingEngine_gasNatural-l', 'sum') = 10;
rate_process_max('CHP-reciprocatingEngine_gasNatural-l', 'shoulder') = 10;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-reciprocatingEngine_gasNatural-l', 'gasNatural', 'mass') = -0.05488235;
coeff_process_praq('CHP-reciprocatingEngine_gasNatural-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-reciprocatingEngine_gasNatural-l', 'heat', 'energy') = 1.308824;
coeff_process_praq('CHP-reciprocatingEngine_gasNatural-l', 'CO2', 'mass') = 0.1502941;
