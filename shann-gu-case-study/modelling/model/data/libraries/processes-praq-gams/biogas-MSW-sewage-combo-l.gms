* biogas-MSW-sewage-combo-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-MSW-sewage-combo-l', 'wint') = 4.439;
rate_process_max('biogas-MSW-sewage-combo-l', 'sum') = 4.439;
rate_process_max('biogas-MSW-sewage-combo-l', 'shoulder') = 4.439;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-MSW-sewage-combo-l', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-MSW-sewage-combo-l', 'wastewater', 'mass') = -1;
coeff_process_praq('biogas-MSW-sewage-combo-l', 'methane', 'mass') = 0.09524138;
coeff_process_praq('biogas-MSW-sewage-combo-l', 'heat', 'energy') = -0.576;
coeff_process_praq('biogas-MSW-sewage-combo-l', 'elec', 'energy') = -0.288;
coeff_process_praq('biogas-MSW-sewage-combo-l', 'CO2', 'mass') = 0.1453103;
coeff_process_praq('biogas-MSW-sewage-combo-l', 'digestate', 'mass') = 0.6;
