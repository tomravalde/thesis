* solar-to-hydrogen_photochemical
PARAMETER
rate_process_max(P,T);
rate_process_max('solar-to-hydrogen_photochemical', 'sum') = 41;
rate_process_max('solar-to-hydrogen_photochemical', 'shoulder') = 41;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('solar-to-hydrogen_photochemical', 'solar', 'energy') = 1428.571;
coeff_process_praq('solar-to-hydrogen_photochemical', 'hydrogen', 'mass') = 1;
coeff_process_praq('solar-to-hydrogen_photochemical', 'water', 'mass') = 1.798571;
