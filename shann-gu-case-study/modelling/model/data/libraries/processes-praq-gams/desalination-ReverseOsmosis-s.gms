* desalination-ReverseOsmosis-s
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-ReverseOsmosis-s', 'wint') = 2.3148;
rate_process_max('desalination-ReverseOsmosis-s', 'sum') = 2.3148;
rate_process_max('desalination-ReverseOsmosis-s', 'shoulder') = 2.3148;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-ReverseOsmosis-s', 'seawater', 'mass') = -3;
coeff_process_praq('desalination-ReverseOsmosis-s', 'water', 'mass') = 1;
coeff_process_praq('desalination-ReverseOsmosis-s', 'elec', 'energy') = 0.0144;
