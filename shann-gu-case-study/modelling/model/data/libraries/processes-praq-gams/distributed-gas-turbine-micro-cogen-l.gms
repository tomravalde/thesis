* distributed-gas-turbine-micro-cogen-l
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-gas-turbine-micro-cogen-l', 'wint') = 0.4;
rate_process_max('distributed-gas-turbine-micro-cogen-l', 'sum') = 0.4;
rate_process_max('distributed-gas-turbine-micro-cogen-l', 'shoulder') = 0.4;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-gas-turbine-micro-cogen-l', 'gasNatural', 'mass') = -0.05331429;
coeff_process_praq('distributed-gas-turbine-micro-cogen-l', 'elec', 'energy') = 1;
coeff_process_praq('distributed-gas-turbine-micro-cogen-l', 'heat', 'energy') = 1.285714;
coeff_process_praq('distributed-gas-turbine-micro-cogen-l', 'CO2', 'mass') = 0.1602857;
