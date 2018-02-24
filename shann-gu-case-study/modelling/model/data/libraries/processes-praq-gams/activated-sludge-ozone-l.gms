* activated-sludge-ozone-l
PARAMETER
rate_process_max(P,T);
rate_process_max('activated-sludge-ozone-l', 'wint') = 36.938;
rate_process_max('activated-sludge-ozone-l', 'sum') = 36.938;
rate_process_max('activated-sludge-ozone-l', 'shoulder') = 36.938;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('activated-sludge-ozone-l', 'wastewater', 'mass') = -1;
coeff_process_praq('activated-sludge-ozone-l', 'elec', 'energy') = -0.003255319;
coeff_process_praq('activated-sludge-ozone-l', 'ozone', 'mass') = -3.191489e-05;
coeff_process_praq('activated-sludge-ozone-l', 'sludge', 'mass') = 0.03297872;
coeff_process_praq('activated-sludge-ozone-l', 'water', 'mass') = 1;
coeff_process_praq('activated-sludge-ozone-l', 'CO2', 'mass') = 0.0006223404;
