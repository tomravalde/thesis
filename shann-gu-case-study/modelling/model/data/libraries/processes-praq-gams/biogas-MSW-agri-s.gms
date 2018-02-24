* biogas-MSW-agri-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-MSW-agri-s', 'wint') = 0.254;
rate_process_max('biogas-MSW-agri-s', 'sum') = 0.254;
rate_process_max('biogas-MSW-agri-s', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-MSW-agri-s', 'biomassAgriWaste', 'mass') = -1;
coeff_process_praq('biogas-MSW-agri-s', 'heat', 'energy') = -0.288;
coeff_process_praq('biogas-MSW-agri-s', 'elec', 'energy') = -0.144;
coeff_process_praq('biogas-MSW-agri-s', 'methane', 'mass') = 0.29;
coeff_process_praq('biogas-MSW-agri-s', 'CO2', 'mass') = 0.4356;
coeff_process_praq('biogas-MSW-agri-s', 'digestate', 'mass') = 0.3;
