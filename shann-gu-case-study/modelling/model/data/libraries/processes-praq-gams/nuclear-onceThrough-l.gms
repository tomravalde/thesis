* nuclear-onceThrough-l
PARAMETER
rate_process_max(P,T);
rate_process_max('nuclear-onceThrough-l', 'wint') = 7900;
rate_process_max('nuclear-onceThrough-l', 'sum') = 7900;
rate_process_max('nuclear-onceThrough-l', 'shoulder') = 7900;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('nuclear-onceThrough-l', 'uranium', 'mass') = -5.678889e-06;
coeff_process_praq('nuclear-onceThrough-l', 'elec', 'energy') = 1;
coeff_process_praq('nuclear-onceThrough-l', 'nuclearFuelSpent', 'mass') = 5.8e-07;
coeff_process_praq('nuclear-onceThrough-l', 'water', 'mass') = -0.8486111;
