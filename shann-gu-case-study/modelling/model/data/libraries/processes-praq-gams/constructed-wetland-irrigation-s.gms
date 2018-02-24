* constructed-wetland-irrigation-s
PARAMETER
rate_process_max(P,T);
rate_process_max('constructed-wetland-irrigation-s', 'wint') = 1.75;
rate_process_max('constructed-wetland-irrigation-s', 'sum') = 1.75;
rate_process_max('constructed-wetland-irrigation-s', 'shoulder') = 1.75;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('constructed-wetland-irrigation-s', 'wastewater', 'mass') = -1;
coeff_process_praq('constructed-wetland-irrigation-s', 'waterNonPotable', 'mass') = 0.95;
