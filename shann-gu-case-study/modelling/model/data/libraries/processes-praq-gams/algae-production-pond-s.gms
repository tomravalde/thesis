* algae-production-pond-s
PARAMETER
rate_process_max(P,T);
rate_process_max('algae-production-pond-s', 'wint') = 4.05e-09;
rate_process_max('algae-production-pond-s', 'sum') = 4.05e-09;
rate_process_max('algae-production-pond-s', 'shoulder') = 4.05e-09;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('algae-production-pond-s', 'algae', 'mass') = 1;
coeff_process_praq('algae-production-pond-s', 'water', 'mass') = -2857.184;
coeff_process_praq('algae-production-pond-s', 'elec', 'energy') = -3.7845;
coeff_process_praq('algae-production-pond-s', 'CO2', 'mass') = -1.8;
