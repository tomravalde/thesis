* desalination-wind-s
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-wind-s', 'wint') = 0.083;
rate_process_max('desalination-wind-s', 'sum') = 0.083;
rate_process_max('desalination-wind-s', 'shoulder') = 0.083;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-wind-s', 'waterBrackish', 'mass') = -3;
coeff_process_praq('desalination-wind-s', 'water', 'mass') = 1;
coeff_process_praq('desalination-wind-s', 'elec', 'energy') = 0.0648;
