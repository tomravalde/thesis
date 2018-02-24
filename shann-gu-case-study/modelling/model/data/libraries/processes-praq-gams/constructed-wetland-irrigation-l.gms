* constructed-wetland-irrigation-l
PARAMETER
rate_process_max(P,T);
rate_process_max('constructed-wetland-irrigation-l', 'wint') = 43.9;
rate_process_max('constructed-wetland-irrigation-l', 'sum') = 43.9;
rate_process_max('constructed-wetland-irrigation-l', 'shoulder') = 43.9;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('constructed-wetland-irrigation-l', 'wastewater', 'mass') = -1;
coeff_process_praq('constructed-wetland-irrigation-l', 'waterNonPotable', 'mass') = 0.95;
