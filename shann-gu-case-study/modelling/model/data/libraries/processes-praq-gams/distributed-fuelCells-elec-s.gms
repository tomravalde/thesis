* distributed-fuelCells-elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-fuelCells-elec-s', 'wint') = 0.05;
rate_process_max('distributed-fuelCells-elec-s', 'sum') = 0.05;
rate_process_max('distributed-fuelCells-elec-s', 'shoulder') = 0.05;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-fuelCells-elec-s', 'hydrogen', 'mass') = -0.0175;
coeff_process_praq('distributed-fuelCells-elec-s', 'elec', 'energy') = 1;
coeff_process_praq('distributed-fuelCells-elec-s', 'water', 'mass') = 0.139;
