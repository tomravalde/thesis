* nuclear-directUseSpentFuel-l
PARAMETER
rate_process_max(P,T);
rate_process_max('nuclear-directUseSpentFuel-l', 'wint') = 7900;
rate_process_max('nuclear-directUseSpentFuel-l', 'sum') = 7900;
rate_process_max('nuclear-directUseSpentFuel-l', 'shoulder') = 7900;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('nuclear-directUseSpentFuel-l', 'uranium', 'mass') = -5.213611e-06;
coeff_process_praq('nuclear-directUseSpentFuel-l', 'elec', 'energy') = 1;
coeff_process_praq('nuclear-directUseSpentFuel-l', 'nuclearFuelSpent', 'mass') = 6.858333e-07;
coeff_process_praq('nuclear-directUseSpentFuel-l', 'water', 'mass') = -0.8486111;
