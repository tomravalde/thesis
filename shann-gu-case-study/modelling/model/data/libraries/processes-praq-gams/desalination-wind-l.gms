* desalination-wind-l
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-wind-l', 'wint') = 4.167;
rate_process_max('desalination-wind-l', 'sum') = 4.167;
rate_process_max('desalination-wind-l', 'shoulder') = 4.167;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-wind-l', 'waterBrackish', 'mass') = -3;
coeff_process_praq('desalination-wind-l', 'water', 'mass') = 1;
coeff_process_praq('desalination-wind-l', 'elec', 'energy') = 0.0648;
