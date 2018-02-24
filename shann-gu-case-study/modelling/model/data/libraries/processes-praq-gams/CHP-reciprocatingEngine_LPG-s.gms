* CHP-reciprocatingEngine_LPG-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-reciprocatingEngine_LPG-s', 'wint') = 0.005;
rate_process_max('CHP-reciprocatingEngine_LPG-s', 'sum') = 0.005;
rate_process_max('CHP-reciprocatingEngine_LPG-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-reciprocatingEngine_LPG-s', 'LPG', 'mass') = -0.06338235;
coeff_process_praq('CHP-reciprocatingEngine_LPG-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-reciprocatingEngine_LPG-s', 'heat', 'energy') = 1.308824;
coeff_process_praq('CHP-reciprocatingEngine_LPG-s', 'CO2', 'mass') = 0.1855882;
