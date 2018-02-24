* wastewater-reuse-irrigation-l
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-reuse-irrigation-l', 'wint') = 9722.2;
rate_process_max('wastewater-reuse-irrigation-l', 'sum') = 9722.2;
rate_process_max('wastewater-reuse-irrigation-l', 'shoulder') = 9722.2;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-reuse-irrigation-l', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater-reuse-irrigation-l', 'elec', 'energy') = -0.01044;
coeff_process_praq('wastewater-reuse-irrigation-l', 'waterNonPotable', 'mass') = -1;
