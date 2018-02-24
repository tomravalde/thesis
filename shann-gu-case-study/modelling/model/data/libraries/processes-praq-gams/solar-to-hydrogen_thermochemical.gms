* solar-to-hydrogen_thermochemical
PARAMETER
rate_process_max(P,T);
rate_process_max('solar-to-hydrogen_thermochemical', 'sum') = 41;
rate_process_max('solar-to-hydrogen_thermochemical', 'shoulder') = 41;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('solar-to-hydrogen_thermochemical', 'solar', 'energy') = -315.4574;
coeff_process_praq('solar-to-hydrogen_thermochemical', 'hydrogen', 'mass') = 1;
coeff_process_praq('solar-to-hydrogen_thermochemical', 'water', 'mass') = -1.786751;
