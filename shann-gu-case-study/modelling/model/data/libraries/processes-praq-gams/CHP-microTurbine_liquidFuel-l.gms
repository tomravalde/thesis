* CHP-microTurbine_liquidFuel-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-microTurbine_liquidFuel-l', 'wint') = 1;
rate_process_max('CHP-microTurbine_liquidFuel-l', 'sum') = 1;
rate_process_max('CHP-microTurbine_liquidFuel-l', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-microTurbine_liquidFuel-l', 'gasoline', 'mass') = -0.1008;
coeff_process_praq('CHP-microTurbine_liquidFuel-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-microTurbine_liquidFuel-l', 'heat', 'energy') = 1.66;
coeff_process_praq('CHP-microTurbine_liquidFuel-l', 'CO2', 'mass') = 0.2772;
