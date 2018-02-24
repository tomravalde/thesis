* nuclear-thermalReactorRecycling-s
PARAMETER
rate_process_max(P,T);
rate_process_max('nuclear-thermalReactorRecycling-s', 'wint') = 0.068;
rate_process_max('nuclear-thermalReactorRecycling-s', 'sum') = 0.068;
rate_process_max('nuclear-thermalReactorRecycling-s', 'shoulder') = 0.068;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('nuclear-thermalReactorRecycling-s', 'uranium', 'mass') = -4.978056e-06;
coeff_process_praq('nuclear-thermalReactorRecycling-s', 'elec', 'energy') = 1;
coeff_process_praq('nuclear-thermalReactorRecycling-s', 'nuclearFuelSpent', 'mass') = 7.194444e-08;
coeff_process_praq('nuclear-thermalReactorRecycling-s', 'water', 'mass') = -0.8486111;
