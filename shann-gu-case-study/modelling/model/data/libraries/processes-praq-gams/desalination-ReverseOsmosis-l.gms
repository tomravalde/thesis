* desalination-ReverseOsmosis-l
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-ReverseOsmosis-l', 'wint') = 9259.259;
rate_process_max('desalination-ReverseOsmosis-l', 'sum') = 9259.259;
rate_process_max('desalination-ReverseOsmosis-l', 'shoulder') = 9259.259;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-ReverseOsmosis-l', 'seawater', 'mass') = -3;
coeff_process_praq('desalination-ReverseOsmosis-l', 'water', 'mass') = 1;
coeff_process_praq('desalination-ReverseOsmosis-l', 'elec', 'energy') = 0.0144;
