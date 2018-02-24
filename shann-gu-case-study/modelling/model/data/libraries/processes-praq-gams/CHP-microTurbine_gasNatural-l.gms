* CHP-microTurbine_gasNatural-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-microTurbine_gasNatural-l', 'wint') = 1;
rate_process_max('CHP-microTurbine_gasNatural-l', 'sum') = 1;
rate_process_max('CHP-microTurbine_gasNatural-l', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-microTurbine_gasNatural-l', 'gasNatural', 'mass') = -0.07464;
coeff_process_praq('CHP-microTurbine_gasNatural-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-microTurbine_gasNatural-l', 'heat', 'energy') = 1.66;
coeff_process_praq('CHP-microTurbine_gasNatural-l', 'CO2', 'mass') = 0.2044;
