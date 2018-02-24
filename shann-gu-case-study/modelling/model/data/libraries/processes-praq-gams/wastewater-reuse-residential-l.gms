* wastewater-reuse-residential-l
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-reuse-residential-l', 'wint') = 6944.4;
rate_process_max('wastewater-reuse-residential-l', 'sum') = 6944.4;
rate_process_max('wastewater-reuse-residential-l', 'shoulder') = 6944.4;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-reuse-residential-l', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater-reuse-residential-l', 'elec', 'energy') = 0.002646;
coeff_process_praq('wastewater-reuse-residential-l', 'waterPotable', 'mass') = 1;
