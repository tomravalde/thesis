* WtE-MSW_elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('WtE-MSW_elec-s', 'wint') = 7.6;
rate_process_max('WtE-MSW_elec-s', 'sum') = 7.6;
rate_process_max('WtE-MSW_elec-s', 'shoulder') = 7.6;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('WtE-MSW_elec-s', 'MSW', 'mass') = -0.02412;
coeff_process_praq('WtE-MSW_elec-s', 'elec', 'energy') = 1;
coeff_process_praq('WtE-MSW_elec-s', 'water', 'mass') = 0.868;
coeff_process_praq('WtE-MSW_elec-s', 'ash', 'mass') = 0.0608;
coeff_process_praq('WtE-MSW_elec-s', 'CO2', 'mass') = 0.1708;
