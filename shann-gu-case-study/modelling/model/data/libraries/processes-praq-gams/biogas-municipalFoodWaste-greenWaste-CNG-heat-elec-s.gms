* biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'wint') = 0.254;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'sum') = 0.254;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'elec', 'energy') = 0;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'heat', 'energy') = 0.07826087;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'biogas', 'mass') = 0.0001289565;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'CNG', 'mass') = 0.1509565;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-s', 'digestate', 'mass') = 0.3;
