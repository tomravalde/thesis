* desalination-ReverseOsmosis-PV-l
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-ReverseOsmosis-PV-l', 'wint') = 0.002583;
rate_process_max('desalination-ReverseOsmosis-PV-l', 'sum') = 0.002583;
rate_process_max('desalination-ReverseOsmosis-PV-l', 'shoulder') = 0.002583;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-ReverseOsmosis-PV-l', 'seawater', 'mass') = -3;
coeff_process_praq('desalination-ReverseOsmosis-PV-l', 'water', 'mass') = 1;
coeff_process_praq('desalination-ReverseOsmosis-PV-l', 'solar', 'energy') = -0.4146;
