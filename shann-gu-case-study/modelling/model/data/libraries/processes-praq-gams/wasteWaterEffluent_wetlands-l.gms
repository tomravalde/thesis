* wasteWaterEffluent_wetlands-l
PARAMETER
rate_process_max(P,T);
rate_process_max('wasteWaterEffluent_wetlands-l', 'wint') = 43.9;
rate_process_max('wasteWaterEffluent_wetlands-l', 'sum') = 43.9;
rate_process_max('wasteWaterEffluent_wetlands-l', 'shoulder') = 43.9;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wasteWaterEffluent_wetlands-l', 'wastewater', 'mass') = -1;
coeff_process_praq('wasteWaterEffluent_wetlands-l', 'elec', 'energy') = -0.000594;
coeff_process_praq('wasteWaterEffluent_wetlands-l', 'waterNonPotable', 'mass') = 1;
