* district-cogen-absorptionChiller
PARAMETER
rate_process_max(P,T);
rate_process_max('district-cogen-absorptionChiller', 'wint') = 100;
rate_process_max('district-cogen-absorptionChiller', 'sum') = 100;
rate_process_max('district-cogen-absorptionChiller', 'shoulder') = 100;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('district-cogen-absorptionChiller', 'heat', 'energy') = -1.492537;
coeff_process_praq('district-cogen-absorptionChiller', 'cool', 'energy') = 1;
