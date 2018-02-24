* desalination-solarPond-s
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-solarPond-s', 'wint') = 0.0266;
rate_process_max('desalination-solarPond-s', 'sum') = 0.0266;
rate_process_max('desalination-solarPond-s', 'shoulder') = 0.0266;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-solarPond-s', 'waterBrackish', 'mass') = -3;
coeff_process_praq('desalination-solarPond-s', 'water', 'mass') = 1;
coeff_process_praq('desalination-solarPond-s', 'elec', 'energy') = -1.095;
