* constructed-wetland-nonPotable-s
PARAMETER
rate_process_max(P,T);
rate_process_max('constructed-wetland-nonPotable-s', 'wint') = 1.75;
rate_process_max('constructed-wetland-nonPotable-s', 'sum') = 1.75;
rate_process_max('constructed-wetland-nonPotable-s', 'shoulder') = 1.75;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('constructed-wetland-nonPotable-s', 'wastewater', 'mass') = -1;
coeff_process_praq('constructed-wetland-nonPotable-s', 'waterNonPotable', 'mass') = 0.95;
