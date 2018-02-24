* airCon_central
PARAMETER
rate_process_max(P,T);
rate_process_max('airCon_central', 'sum') = 0.025;
rate_process_max('airCon_central', 'wint') = 0;
rate_process_max('airCon_central', 'shoulder') = 0;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('airCon_central', 'elec', 'energy') = -23.9;
coeff_process_praq('airCon_central', 'cool', 'energy') = 1;
