* WtE-s
PARAMETER
rate_process_max(P,T);
rate_process_max('WtE-s', 'wint') = 7.6;
rate_process_max('WtE-s', 'sum') = 7.6;
rate_process_max('WtE-s', 'shoulder') = 7.6;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('WtE-s', 'waste', 'mass') = -0.2384106;
coeff_process_praq('WtE-s', 'heat', 'energy') = -4.264901;
coeff_process_praq('WtE-s', 'elec', 'energy') = 1;
coeff_process_praq('WtE-s', 'water', 'mass') = -0.4701987;
coeff_process_praq('WtE-s', 'CO2', 'mass') = 0.3708609;
coeff_process_praq('WtE-s', 'ash', 'mass') = 0.02384106;
