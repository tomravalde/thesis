* wasteWaterEffluent_wetlands-s
PARAMETER
rate_process_max(P,T);
rate_process_max('wasteWaterEffluent_wetlands-s', 'wint') = 1.75;
rate_process_max('wasteWaterEffluent_wetlands-s', 'sum') = 1.75;
rate_process_max('wasteWaterEffluent_wetlands-s', 'shoulder') = 1.75;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wasteWaterEffluent_wetlands-s', 'wastewater', 'mass') = -1;
coeff_process_praq('wasteWaterEffluent_wetlands-s', 'elec', 'energy') = -0.000594;
coeff_process_praq('wasteWaterEffluent_wetlands-s', 'waterNonPotable', 'mass') = 1;
