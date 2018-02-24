* desalination-solarPond-l
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-solarPond-l', 'wint') = 34.72;
rate_process_max('desalination-solarPond-l', 'sum') = 34.72;
rate_process_max('desalination-solarPond-l', 'shoulder') = 34.72;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-solarPond-l', 'waterBrackish', 'mass') = -3;
coeff_process_praq('desalination-solarPond-l', 'water', 'mass') = 1;
coeff_process_praq('desalination-solarPond-l', 'elec', 'energy') = -1.095;
