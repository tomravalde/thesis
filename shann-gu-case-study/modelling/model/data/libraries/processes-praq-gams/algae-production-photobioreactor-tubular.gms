* algae-production-photobioreactor-tubular
PARAMETER
rate_process_max(P,T);
rate_process_max('algae-production-photobioreactor-tubular', 'wint') = 2.95e-06;
rate_process_max('algae-production-photobioreactor-tubular', 'sum') = 2.95e-06;
rate_process_max('algae-production-photobioreactor-tubular', 'shoulder') = 2.95e-06;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('algae-production-photobioreactor-tubular', 'algae', 'mass') = 1;
coeff_process_praq('algae-production-photobioreactor-tubular', 'water', 'mass') = -178.485;
coeff_process_praq('algae-production-photobioreactor-tubular', 'elec', 'energy') = -158.958;
coeff_process_praq('algae-production-photobioreactor-tubular', 'CO2', 'mass') = -1.8;
