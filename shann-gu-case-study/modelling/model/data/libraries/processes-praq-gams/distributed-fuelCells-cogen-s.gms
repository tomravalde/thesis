* distributed-fuelCells-cogen-s
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-fuelCells-cogen-s', 'wint') = 0.05;
rate_process_max('distributed-fuelCells-cogen-s', 'sum') = 0.05;
rate_process_max('distributed-fuelCells-cogen-s', 'shoulder') = 0.05;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-fuelCells-cogen-s', 'hydrogen', 'mass') = -0.0175;
coeff_process_praq('distributed-fuelCells-cogen-s', 'elec', 'energy') = 1;
coeff_process_praq('distributed-fuelCells-cogen-s', 'heat', 'energy') = 1.125;
coeff_process_praq('distributed-fuelCells-cogen-s', 'water', 'mass') = 0.139;
