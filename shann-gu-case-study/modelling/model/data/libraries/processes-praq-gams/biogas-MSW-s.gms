* biogas-MSW-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-MSW-s', 'wint') = 0.254;
rate_process_max('biogas-MSW-s', 'sum') = 0.254;
rate_process_max('biogas-MSW-s', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-MSW-s', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-MSW-s', 'methane', 'mass') = 0.222;
coeff_process_praq('biogas-MSW-s', 'heat', 'energy') = -0.288;
coeff_process_praq('biogas-MSW-s', 'elec', 'energy') = -0.144;
coeff_process_praq('biogas-MSW-s', 'CO2', 'mass') = 0.339;
coeff_process_praq('biogas-MSW-s', 'digestate', 'mass') = 0.3;
