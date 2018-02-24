* centralHeating
PARAMETER
rate_process_max(P,T);
rate_process_max('centralHeating', 'wint') = 0.025;
rate_process_max('centralHeating', 'shoulder') = 0.025;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('centralHeating', 'heat', 'energy') = 1;
coeff_process_praq('centralHeating', 'hot_secondary_feed', 'mass') = -4;
coeff_process_praq('centralHeating', 'hot_secondary_return', 'mass') = 4;
