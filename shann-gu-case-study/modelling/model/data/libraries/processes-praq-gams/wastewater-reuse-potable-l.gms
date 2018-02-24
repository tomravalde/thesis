* wastewater-reuse-potable-l
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-reuse-potable-l', 'wint') = 462.96;
rate_process_max('wastewater-reuse-potable-l', 'sum') = 462.96;
rate_process_max('wastewater-reuse-potable-l', 'shoulder') = 462.96;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-reuse-potable-l', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater-reuse-potable-l', 'elec', 'energy') = -0.01116;
coeff_process_praq('wastewater-reuse-potable-l', 'waterPotable', 'mass') = 1;
