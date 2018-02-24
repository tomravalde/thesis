* nuclear-directUseSpentFuel-s
PARAMETER
rate_process_max(P,T);
rate_process_max('nuclear-directUseSpentFuel-s', 'wint') = 0.068;
rate_process_max('nuclear-directUseSpentFuel-s', 'sum') = 0.068;
rate_process_max('nuclear-directUseSpentFuel-s', 'shoulder') = 0.068;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('nuclear-directUseSpentFuel-s', 'uranium', 'mass') = -5.213611e-06;
coeff_process_praq('nuclear-directUseSpentFuel-s', 'elec', 'energy') = 1;
coeff_process_praq('nuclear-directUseSpentFuel-s', 'nuclearFuelSpent', 'mass') = 6.858333e-07;
coeff_process_praq('nuclear-directUseSpentFuel-s', 'water', 'mass') = -0.8486111;
