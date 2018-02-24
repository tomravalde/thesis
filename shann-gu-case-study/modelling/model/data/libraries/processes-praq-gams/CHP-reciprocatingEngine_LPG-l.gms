* CHP-reciprocatingEngine_LPG-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-reciprocatingEngine_LPG-l', 'wint') = 10;
rate_process_max('CHP-reciprocatingEngine_LPG-l', 'sum') = 10;
rate_process_max('CHP-reciprocatingEngine_LPG-l', 'shoulder') = 10;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-reciprocatingEngine_LPG-l', 'LPG', 'mass') = -0.06338235;
coeff_process_praq('CHP-reciprocatingEngine_LPG-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-reciprocatingEngine_LPG-l', 'heat', 'energy') = 1.308824;
coeff_process_praq('CHP-reciprocatingEngine_LPG-l', 'CO2', 'mass') = 0.1855882;
