* distributed-gas-turbine-micro-cogen-s
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-gas-turbine-micro-cogen-s', 'wint') = 0.03;
rate_process_max('distributed-gas-turbine-micro-cogen-s', 'sum') = 0.03;
rate_process_max('distributed-gas-turbine-micro-cogen-s', 'shoulder') = 0.03;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-gas-turbine-micro-cogen-s', 'gasNatural', 'mass') = -0.05331429;
coeff_process_praq('distributed-gas-turbine-micro-cogen-s', 'elec', 'energy') = 1;
coeff_process_praq('distributed-gas-turbine-micro-cogen-s', 'heat', 'energy') = 1.285714;
coeff_process_praq('distributed-gas-turbine-micro-cogen-s', 'CO2', 'mass') = 0.1602857;
