* WtE-l
PARAMETER
rate_process_max(P,T);
rate_process_max('WtE-l', 'wint') = 86;
rate_process_max('WtE-l', 'sum') = 86;
rate_process_max('WtE-l', 'shoulder') = 86;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('WtE-l', 'waste', 'mass') = -0.2384106;
coeff_process_praq('WtE-l', 'heat', 'energy') = -4.264901;
coeff_process_praq('WtE-l', 'elec', 'energy') = 1;
coeff_process_praq('WtE-l', 'water', 'mass') = -0.4701987;
coeff_process_praq('WtE-l', 'CO2', 'mass') = 0.3708609;
coeff_process_praq('WtE-l', 'ash', 'mass') = 0.02384106;
