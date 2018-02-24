* wastewater-reuse-potable-s
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-reuse-potable-s', 'wint') = 0.0116;
rate_process_max('wastewater-reuse-potable-s', 'sum') = 0.0116;
rate_process_max('wastewater-reuse-potable-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-reuse-potable-s', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater-reuse-potable-s', 'elec', 'energy') = -0.01116;
coeff_process_praq('wastewater-reuse-potable-s', 'waterPotable', 'mass') = 1;
