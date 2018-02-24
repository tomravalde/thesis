* biogas-municipalFoodWaste-greenWaste-CNG-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-s', 'wint') = 0.254;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-s', 'sum') = 0.254;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-s', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-s', 'elec', 'energy') = -0.2347826;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-s', 'heat', 'energy') = -0.2003478;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-s', 'biogas', 'mass') = 0.0001651913;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-s', 'CNG', 'mass') = 0.1345217;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-s', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-s', 'digestate', 'mass') = 0.3;
