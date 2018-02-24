* nuclear-thermalReactorRecycling-l
PARAMETER
rate_process_max(P,T);
rate_process_max('nuclear-thermalReactorRecycling-l', 'wint') = 7900;
rate_process_max('nuclear-thermalReactorRecycling-l', 'sum') = 7900;
rate_process_max('nuclear-thermalReactorRecycling-l', 'shoulder') = 7900;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('nuclear-thermalReactorRecycling-l', 'uranium', 'mass') = -4.978056e-06;
coeff_process_praq('nuclear-thermalReactorRecycling-l', 'elec', 'energy') = 1;
coeff_process_praq('nuclear-thermalReactorRecycling-l', 'nuclearFuelSpent', 'mass') = 7.194444e-08;
coeff_process_praq('nuclear-thermalReactorRecycling-l', 'water', 'mass') = -0.8486111;
