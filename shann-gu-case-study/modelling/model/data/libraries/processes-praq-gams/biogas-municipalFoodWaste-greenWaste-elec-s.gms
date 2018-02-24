* biogas-municipalFoodWaste-greenWaste-elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-municipalFoodWaste-greenWaste-elec-s', 'wint') = 0.254;
rate_process_max('biogas-municipalFoodWaste-greenWaste-elec-s', 'sum') = 0.254;
rate_process_max('biogas-municipalFoodWaste-greenWaste-elec-s', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-s', 'elec', 'energy') = 0.8514783;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-s', 'heat', 'energy') = 1.051826;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-s', 'biogas', 'mass') = 0.0001449304;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-s', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-elec-s', 'digestate', 'mass') = 0.3;
