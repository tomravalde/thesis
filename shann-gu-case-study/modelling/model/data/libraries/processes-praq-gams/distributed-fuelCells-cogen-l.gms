* distributed-fuelCells-cogen-l
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-fuelCells-cogen-l', 'wint') = 3;
rate_process_max('distributed-fuelCells-cogen-l', 'sum') = 3;
rate_process_max('distributed-fuelCells-cogen-l', 'shoulder') = 3;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-fuelCells-cogen-l', 'hydrogen', 'mass') = -0.0175;
coeff_process_praq('distributed-fuelCells-cogen-l', 'elec', 'energy') = 1;
coeff_process_praq('distributed-fuelCells-cogen-l', 'heat', 'energy') = 1.125;
coeff_process_praq('distributed-fuelCells-cogen-l', 'water', 'mass') = 0.139;
