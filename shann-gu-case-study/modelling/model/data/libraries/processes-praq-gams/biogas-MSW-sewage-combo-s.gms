* biogas-MSW-sewage-combo-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-MSW-sewage-combo-s', 'wint') = 0.254;
rate_process_max('biogas-MSW-sewage-combo-s', 'sum') = 0.254;
rate_process_max('biogas-MSW-sewage-combo-s', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-MSW-sewage-combo-s', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-MSW-sewage-combo-s', 'wastewater', 'mass') = -1;
coeff_process_praq('biogas-MSW-sewage-combo-s', 'methane', 'mass') = 0.09524138;
coeff_process_praq('biogas-MSW-sewage-combo-s', 'heat', 'energy') = -0.576;
coeff_process_praq('biogas-MSW-sewage-combo-s', 'elec', 'energy') = -0.288;
coeff_process_praq('biogas-MSW-sewage-combo-s', 'CO2', 'mass') = 0.1453103;
coeff_process_praq('biogas-MSW-sewage-combo-s', 'digestate', 'mass') = 0.6;
