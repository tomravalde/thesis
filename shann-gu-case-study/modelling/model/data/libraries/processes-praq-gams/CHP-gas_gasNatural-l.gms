* CHP-gas_gasNatural-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-gas_gasNatural-l', 'wint') = 300;
rate_process_max('CHP-gas_gasNatural-l', 'sum') = 300;
rate_process_max('CHP-gas_gasNatural-l', 'shoulder') = 300;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-gas_gasNatural-l', 'gasNatural', 'mass') = -0.0622;
coeff_process_praq('CHP-gas_gasNatural-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-gas_gasNatural-l', 'heat', 'energy') = 1.2;
coeff_process_praq('CHP-gas_gasNatural-l', 'CO2', 'mass') = 0.1703333;
