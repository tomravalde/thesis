* biogas-MSW-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-MSW-l', 'wint') = 4.439;
rate_process_max('biogas-MSW-l', 'sum') = 4.439;
rate_process_max('biogas-MSW-l', 'shoulder') = 4.439;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-MSW-l', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-MSW-l', 'methane', 'mass') = 0.222;
coeff_process_praq('biogas-MSW-l', 'heat', 'energy') = -0.288;
coeff_process_praq('biogas-MSW-l', 'elec', 'energy') = -0.144;
coeff_process_praq('biogas-MSW-l', 'CO2', 'mass') = 0.339;
coeff_process_praq('biogas-MSW-l', 'digestate', 'mass') = 0.3;
