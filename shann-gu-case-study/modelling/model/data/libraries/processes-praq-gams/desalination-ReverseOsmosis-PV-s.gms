* desalination-ReverseOsmosis-PV-s
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-ReverseOsmosis-PV-s', 'wint') = 0.01472;
rate_process_max('desalination-ReverseOsmosis-PV-s', 'sum') = 0.01472;
rate_process_max('desalination-ReverseOsmosis-PV-s', 'shoulder') = 0.01472;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-ReverseOsmosis-PV-s', 'seawater', 'mass') = -3;
coeff_process_praq('desalination-ReverseOsmosis-PV-s', 'water', 'mass') = 1;
coeff_process_praq('desalination-ReverseOsmosis-PV-s', 'solar', 'energy') = -0.4146;
