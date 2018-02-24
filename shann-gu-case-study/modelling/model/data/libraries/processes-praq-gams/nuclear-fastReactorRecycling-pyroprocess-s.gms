* nuclear-fastReactorRecycling-pyroprocess-s
PARAMETER
rate_process_max(P,T);
rate_process_max('nuclear-fastReactorRecycling-pyroprocess-s', 'wint') = 0.068;
rate_process_max('nuclear-fastReactorRecycling-pyroprocess-s', 'sum') = 0.068;
rate_process_max('nuclear-fastReactorRecycling-pyroprocess-s', 'shoulder') = 0.068;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('nuclear-fastReactorRecycling-pyroprocess-s', 'uranium', 'mass') = -3.428333e-06;
coeff_process_praq('nuclear-fastReactorRecycling-pyroprocess-s', 'elec', 'energy') = 1;
coeff_process_praq('nuclear-fastReactorRecycling-pyroprocess-s', 'water', 'mass') = -0.8486111;
