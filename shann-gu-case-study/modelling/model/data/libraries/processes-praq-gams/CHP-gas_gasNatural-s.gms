* CHP-gas_gasNatural-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-gas_gasNatural-s', 'wint') = 0.5;
rate_process_max('CHP-gas_gasNatural-s', 'sum') = 0.5;
rate_process_max('CHP-gas_gasNatural-s', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-gas_gasNatural-s', 'gasNatural', 'mass') = -0.0622;
coeff_process_praq('CHP-gas_gasNatural-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-gas_gasNatural-s', 'heat', 'energy') = 1.2;
coeff_process_praq('CHP-gas_gasNatural-s', 'CO2', 'mass') = 0.1703333;
