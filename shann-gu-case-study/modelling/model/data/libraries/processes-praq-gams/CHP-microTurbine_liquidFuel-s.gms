* CHP-microTurbine_liquidFuel-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-microTurbine_liquidFuel-s', 'wint') = 0.03;
rate_process_max('CHP-microTurbine_liquidFuel-s', 'sum') = 0.03;
rate_process_max('CHP-microTurbine_liquidFuel-s', 'shoulder') = 0.03;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-microTurbine_liquidFuel-s', 'gasoline', 'mass') = -0.1008;
coeff_process_praq('CHP-microTurbine_liquidFuel-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-microTurbine_liquidFuel-s', 'heat', 'energy') = 1.66;
coeff_process_praq('CHP-microTurbine_liquidFuel-s', 'CO2', 'mass') = 0.2772;
