* WtE-MSW_elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('WtE-MSW_elec-l', 'wint') = 86;
rate_process_max('WtE-MSW_elec-l', 'sum') = 86;
rate_process_max('WtE-MSW_elec-l', 'shoulder') = 86;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('WtE-MSW_elec-l', 'MSW', 'mass') = -0.02412;
coeff_process_praq('WtE-MSW_elec-l', 'elec', 'energy') = 1;
coeff_process_praq('WtE-MSW_elec-l', 'water', 'mass') = 0.868;
coeff_process_praq('WtE-MSW_elec-l', 'ash', 'mass') = 0.0608;
coeff_process_praq('WtE-MSW_elec-l', 'CO2', 'mass') = 0.1708;
