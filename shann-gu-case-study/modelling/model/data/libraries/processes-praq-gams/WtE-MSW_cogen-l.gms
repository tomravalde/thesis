* WtE-MSW_cogen-l
PARAMETER
rate_process_max(P,T);
rate_process_max('WtE-MSW_cogen-l', 'wint') = 86;
rate_process_max('WtE-MSW_cogen-l', 'sum') = 86;
rate_process_max('WtE-MSW_cogen-l', 'shoulder') = 86;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('WtE-MSW_cogen-l', 'MSW', 'mass') = -0.244;
coeff_process_praq('WtE-MSW_cogen-l', 'elec', 'energy') = 1;
coeff_process_praq('WtE-MSW_cogen-l', 'water', 'mass') = 0.868;
coeff_process_praq('WtE-MSW_cogen-l', 'heat', 'energy') = 2.2;
coeff_process_praq('WtE-MSW_cogen-l', 'ash', 'mass') = 0.0608;
coeff_process_praq('WtE-MSW_cogen-l', 'CO2', 'mass') = 0.1708;
