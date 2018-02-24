* algae-production-photobioreactor-flatPlat
PARAMETER
rate_process_max(P,T);
rate_process_max('algae-production-photobioreactor-flatPlat', 'wint') = 2.95e-06;
rate_process_max('algae-production-photobioreactor-flatPlat', 'sum') = 2.95e-06;
rate_process_max('algae-production-photobioreactor-flatPlat', 'shoulder') = 2.95e-06;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('algae-production-photobioreactor-flatPlat', 'algae', 'mass') = 1;
coeff_process_praq('algae-production-photobioreactor-flatPlat', 'water', 'mass') = -370.3655;
coeff_process_praq('algae-production-photobioreactor-flatPlat', 'elec', 'energy') = 6.9894;
coeff_process_praq('algae-production-photobioreactor-flatPlat', 'CO2', 'mass') = -1.8;
