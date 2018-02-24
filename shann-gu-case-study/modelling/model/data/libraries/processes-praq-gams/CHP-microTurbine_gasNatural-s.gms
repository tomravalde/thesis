* CHP-microTurbine_gasNatural-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-microTurbine_gasNatural-s', 'wint') = 0.03;
rate_process_max('CHP-microTurbine_gasNatural-s', 'sum') = 0.03;
rate_process_max('CHP-microTurbine_gasNatural-s', 'shoulder') = 0.03;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-microTurbine_gasNatural-s', 'gasNatural', 'mass') = -0.07464;
coeff_process_praq('CHP-microTurbine_gasNatural-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-microTurbine_gasNatural-s', 'heat', 'energy') = 1.66;
coeff_process_praq('CHP-microTurbine_gasNatural-s', 'CO2', 'mass') = 0.2044;
