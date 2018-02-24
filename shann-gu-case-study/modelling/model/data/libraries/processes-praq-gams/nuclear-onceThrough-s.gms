* nuclear-onceThrough-s
PARAMETER
rate_process_max(P,T);
rate_process_max('nuclear-onceThrough-s', 'wint') = 0.068;
rate_process_max('nuclear-onceThrough-s', 'sum') = 0.068;
rate_process_max('nuclear-onceThrough-s', 'shoulder') = 0.068;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('nuclear-onceThrough-s', 'uranium', 'mass') = -5.678889e-06;
coeff_process_praq('nuclear-onceThrough-s', 'elec', 'energy') = 1;
coeff_process_praq('nuclear-onceThrough-s', 'nuclearFuelSpent', 'mass') = 5.8e-07;
coeff_process_praq('nuclear-onceThrough-s', 'water', 'mass') = -0.8486111;
