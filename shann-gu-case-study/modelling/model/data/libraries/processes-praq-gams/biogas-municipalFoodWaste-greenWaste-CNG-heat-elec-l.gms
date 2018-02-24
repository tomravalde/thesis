* biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'wint') = 4.439;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'sum') = 4.439;
rate_process_max('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'shoulder') = 4.439;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'elec', 'energy') = 0;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'heat', 'energy') = 0.07826087;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'biogas', 'mass') = 0.0001289565;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'CNG', 'mass') = 0.1509565;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'MSW', 'mass') = -1;
coeff_process_praq('biogas-municipalFoodWaste-greenWaste-CNG-heat-elec-l', 'digestate', 'mass') = 0.3;
