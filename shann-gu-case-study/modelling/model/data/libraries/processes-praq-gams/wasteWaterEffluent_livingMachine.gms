* wasteWaterEffluent_livingMachine
PARAMETER
rate_process_max(P,T);
rate_process_max('wasteWaterEffluent_livingMachine', 'wint') = 0.198;
rate_process_max('wasteWaterEffluent_livingMachine', 'sum') = 0.198;
rate_process_max('wasteWaterEffluent_livingMachine', 'shoulder') = 0.198;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wasteWaterEffluent_livingMachine', 'wastewater', 'mass') = -1;
coeff_process_praq('wasteWaterEffluent_livingMachine', 'elec', 'energy') = -0.005544;
coeff_process_praq('wasteWaterEffluent_livingMachine', 'waterNonPotable', 'mass') = 1;
