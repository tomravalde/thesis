* airCon_split
PARAMETER
rate_process_max(P,T);
rate_process_max('airCon_split', 'sum') = 0.025;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('airCon_split', 'elec', 'energy') = -23.9;
coeff_process_praq('airCon_split', 'cool', 'energy') = 1;
