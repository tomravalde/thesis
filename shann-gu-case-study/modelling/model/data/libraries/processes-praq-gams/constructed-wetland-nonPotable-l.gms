* constructed-wetland-nonPotable-l
PARAMETER
rate_process_max(P,T);
rate_process_max('constructed-wetland-nonPotable-l', 'wint') = 43.9;
rate_process_max('constructed-wetland-nonPotable-l', 'sum') = 43.9;
rate_process_max('constructed-wetland-nonPotable-l', 'shoulder') = 43.9;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('constructed-wetland-nonPotable-l', 'wastewater', 'mass') = -1;
coeff_process_praq('constructed-wetland-nonPotable-l', 'waterNonPotable', 'mass') = 0.95;
