* algae-cultivation-s
PARAMETER
rate_process_max(P,T);
rate_process_max('algae-cultivation-s', 'wint') = 4.05e-09;
rate_process_max('algae-cultivation-s', 'sum') = 4.05e-09;
rate_process_max('algae-cultivation-s', 'shoulder') = 4.05e-09;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('algae-cultivation-s', 'elec', 'energy') = -9.785714;
coeff_process_praq('algae-cultivation-s', 'water', 'mass') = -982.1429;
coeff_process_praq('algae-cultivation-s', 'algae', 'mass') = 1;
coeff_process_praq('algae-cultivation-s', 'CO2', 'mass') = -1.8;
