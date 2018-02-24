* algae-cultivation-l
PARAMETER
rate_process_max(P,T);
rate_process_max('algae-cultivation-l', 'wint') = 0.00405;
rate_process_max('algae-cultivation-l', 'sum') = 0.00405;
rate_process_max('algae-cultivation-l', 'shoulder') = 0.00405;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('algae-cultivation-l', 'elec', 'energy') = -9.785714;
coeff_process_praq('algae-cultivation-l', 'water', 'mass') = -982.1429;
coeff_process_praq('algae-cultivation-l', 'algae', 'mass') = 1;
coeff_process_praq('algae-cultivation-l', 'CO2', 'mass') = -1.8;
