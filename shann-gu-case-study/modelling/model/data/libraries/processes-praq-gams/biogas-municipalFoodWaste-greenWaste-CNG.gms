* biogas-municipalFoodWaste-greenWaste-CNG
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG', 'wint') = 4.439;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG', 'sum') = 4.439;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG', 'shoulder') = 4.439;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG', 'elec', 'energy') = -0.2347826;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG', 'heat', 'energy') = -0.2003478;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG', 'biogas', 'mass') = 0.0001651913;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG', 'CNG', 'mass') = 0.1345217;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG', 'digestate', 'mass') = 0.3;
