* biogas-municipalFoodWaste-greenWaste-CNG-heat-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'wint') = 0.254;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'sum') = 0.254;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'elec', 'energy') = -0.2191304;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'heat', 'energy') = 0;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'biogas', 'mass') = 0.0001470174;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'CNG', 'mass') = 0.1197609;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-s', 'digestate', 'mass') = 0.3;
