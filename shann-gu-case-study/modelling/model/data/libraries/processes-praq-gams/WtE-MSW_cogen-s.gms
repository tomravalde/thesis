* WtE-MSW_cogen-s
PARAMETER
rate_process_max(P,T);
rate_process_max('WtE-MSW_cogen-s', 'wint') = 7.6;
rate_process_max('WtE-MSW_cogen-s', 'sum') = 7.6;
rate_process_max('WtE-MSW_cogen-s', 'shoulder') = 7.6;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('WtE-MSW_cogen-s', 'MSW', 'mass') = -0.244;
coeff_process_praq('WtE-MSW_cogen-s', 'elec', 'energy') = 1;
coeff_process_praq('WtE-MSW_cogen-s', 'water', 'mass') = 0.868;
coeff_process_praq('WtE-MSW_cogen-s', 'heat', 'energy') = 2.2;
coeff_process_praq('WtE-MSW_cogen-s', 'ash', 'mass') = 0.0608;
coeff_process_praq('WtE-MSW_cogen-s', 'CO2', 'mass') = 0.1708;
