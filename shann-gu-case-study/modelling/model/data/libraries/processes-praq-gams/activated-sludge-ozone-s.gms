* activated-sludge-ozone-s
PARAMETER
rate_process_max(P,T);
rate_process_max('activated-sludge-ozone-s', 'wint') = 0.0116;
rate_process_max('activated-sludge-ozone-s', 'sum') = 0.0116;
rate_process_max('activated-sludge-ozone-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('activated-sludge-ozone-s', 'wastewater', 'mass') = -1;
coeff_process_praq('activated-sludge-ozone-s', 'elec', 'energy') = -0.003255319;
coeff_process_praq('activated-sludge-ozone-s', 'ozone', 'mass') = -3.191489e-05;
coeff_process_praq('activated-sludge-ozone-s', 'sludge', 'mass') = 0.03297872;
coeff_process_praq('activated-sludge-ozone-s', 'water', 'mass') = 1;
coeff_process_praq('activated-sludge-ozone-s', 'CO2', 'mass') = 0.0006223404;
