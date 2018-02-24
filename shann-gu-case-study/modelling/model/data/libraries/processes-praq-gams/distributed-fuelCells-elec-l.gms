* distributed-fuelCells-elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('distributed-fuelCells-elec-l', 'wint') = 3;
rate_process_max('distributed-fuelCells-elec-l', 'sum') = 3;
rate_process_max('distributed-fuelCells-elec-l', 'shoulder') = 3;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('distributed-fuelCells-elec-l', 'hydrogen', 'mass') = -0.0175;
coeff_process_praq('distributed-fuelCells-elec-l', 'elec', 'energy') = 1;
coeff_process_praq('distributed-fuelCells-elec-l', 'water', 'mass') = 0.139;
