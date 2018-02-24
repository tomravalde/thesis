* nuclear-fastReactorRecycling-pyroprocess-l
PARAMETER
rate_process_max(P,T);
rate_process_max('nuclear-fastReactorRecycling-pyroprocess-l', 'wint') = 7900;
rate_process_max('nuclear-fastReactorRecycling-pyroprocess-l', 'sum') = 7900;
rate_process_max('nuclear-fastReactorRecycling-pyroprocess-l', 'shoulder') = 7900;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('nuclear-fastReactorRecycling-pyroprocess-l', 'uranium', 'mass') = -3.428333e-06;
coeff_process_praq('nuclear-fastReactorRecycling-pyroprocess-l', 'elec', 'energy') = 1;
coeff_process_praq('nuclear-fastReactorRecycling-pyroprocess-l', 'water', 'mass') = -0.8486111;
