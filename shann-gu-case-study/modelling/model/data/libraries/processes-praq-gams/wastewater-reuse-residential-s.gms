* wastewater-reuse-residential-s
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-reuse-residential-s', 'wint') = 0.0116;
rate_process_max('wastewater-reuse-residential-s', 'sum') = 0.0116;
rate_process_max('wastewater-reuse-residential-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-reuse-residential-s', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater-reuse-residential-s', 'elec', 'energy') = 0.002646;
coeff_process_praq('wastewater-reuse-residential-s', 'waterPotable', 'mass') = 1;
