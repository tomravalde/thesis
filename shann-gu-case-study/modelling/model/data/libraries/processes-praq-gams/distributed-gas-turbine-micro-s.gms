* distributed-gas-turbine-micro-s
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-gas-turbine-micro-s', 'wint') = 0.03;
rate_process_max('distributed-gas-turbine-micro-s', 'sum') = 0.03;
rate_process_max('distributed-gas-turbine-micro-s', 'shoulder') = 0.03;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-gas-turbine-micro-s', 'gasNatural', 'mass') = -0.05331429;
coeff_process_praq('distributed-gas-turbine-micro-s', 'elec', 'energy') = 1;
coeff_process_praq('distributed-gas-turbine-micro-s', 'CO2', 'mass') = 0.1602857;
