* biogas-municipalFoodWaste-greenWaste-elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-municipalFoodWaste-greenWaste-elec-l', 'wint') = 4.439;
rate_process_max('biogas-municipalFoodWaste-greenWaste-elec-l', 'sum') = 4.439;
rate_process_max('biogas-municipalFoodWaste-greenWaste-elec-l', 'shoulder') = 4.439;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-l', 'elec', 'energy') = 0.8514783;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-l', 'heat', 'energy') = 1.051826;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-l', 'biogas', 'mass') = 0.0001449304;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-l', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-l', 'digestate', 'mass') = 0.3;
