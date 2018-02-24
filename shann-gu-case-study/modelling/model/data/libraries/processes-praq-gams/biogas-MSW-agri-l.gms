* biogas-MSW-agri-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-MSW-agri-l', 'wint') = 4.439;
rate_process_max('biogas-MSW-agri-l', 'sum') = 4.439;
rate_process_max('biogas-MSW-agri-l', 'shoulder') = 4.439;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-MSW-agri-l', 'biomassAgriWaste', 'mass') = -1;
coeff_process_praq('biogas-MSW-agri-l', 'heat', 'energy') = -0.288;
coeff_process_praq('biogas-MSW-agri-l', 'elec', 'energy') = -0.144;
coeff_process_praq('biogas-MSW-agri-l', 'methane', 'mass') = 0.29;
coeff_process_praq('biogas-MSW-agri-l', 'CO2', 'mass') = 0.4356;
coeff_process_praq('biogas-MSW-agri-l', 'digestate', 'mass') = 0.3;
