* CHP-reciprocatingEngine_gasNatural-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-reciprocatingEngine_gasNatural-s', 'wint') = 0.005;
rate_process_max('CHP-reciprocatingEngine_gasNatural-s', 'sum') = 0.005;
rate_process_max('CHP-reciprocatingEngine_gasNatural-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-reciprocatingEngine_gasNatural-s', 'gasNatural', 'mass') = -0.05488235;
coeff_process_praq('CHP-reciprocatingEngine_gasNatural-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-reciprocatingEngine_gasNatural-s', 'heat', 'energy') = 1.308824;
coeff_process_praq('CHP-reciprocatingEngine_gasNatural-s', 'CO2', 'mass') = 0.1502941;
