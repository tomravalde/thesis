* algae-production-pond-l
PARAMETER
rate_process_max(P,T);
rate_process_max('algae-production-pond-l', 'wint') = 0.00405;
rate_process_max('algae-production-pond-l', 'sum') = 0.00405;
rate_process_max('algae-production-pond-l', 'shoulder') = 0.00405;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('algae-production-pond-l', 'algae', 'mass') = 1;
coeff_process_praq('algae-production-pond-l', 'water', 'mass') = -2857.184;
coeff_process_praq('algae-production-pond-l', 'elec', 'energy') = -3.7845;
coeff_process_praq('algae-production-pond-l', 'CO2', 'mass') = -1.8;
