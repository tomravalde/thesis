* wastewater-reuse-irrigation-s
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-reuse-irrigation-s', 'wint') = 0.0116;
rate_process_max('wastewater-reuse-irrigation-s', 'sum') = 0.0116;
rate_process_max('wastewater-reuse-irrigation-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-reuse-irrigation-s', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater-reuse-irrigation-s', 'elec', 'energy') = -0.01044;
coeff_process_praq('wastewater-reuse-irrigation-s', 'waterNonPotable', 'mass') = -1;
