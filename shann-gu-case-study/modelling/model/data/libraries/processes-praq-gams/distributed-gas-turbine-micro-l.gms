* distributed-gas-turbine-micro-l
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-gas-turbine-micro-l', 'wint') = 0.4;
rate_process_max('distributed-gas-turbine-micro-l', 'sum') = 0.4;
rate_process_max('distributed-gas-turbine-micro-l', 'shoulder') = 0.4;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-gas-turbine-micro-l', 'gasNatural', 'mass') = -0.05331429;
coeff_process_praq('distributed-gas-turbine-micro-l', 'elec', 'energy') = 1;
coeff_process_praq('distributed-gas-turbine-micro-l', 'CO2', 'mass') = 0.1602857;
