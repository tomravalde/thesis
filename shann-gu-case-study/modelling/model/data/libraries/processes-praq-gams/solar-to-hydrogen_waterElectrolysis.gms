* solar-to-hydrogen_waterElectrolysis
PARAMETER
rate_process_max(P,T);
rate_process_max('solar-to-hydrogen_waterElectrolysis', 'wint') = 41;
rate_process_max('solar-to-hydrogen_waterElectrolysis', 'sum') = 41;
rate_process_max('solar-to-hydrogen_waterElectrolysis', 'shoulder') = 41;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('solar-to-hydrogen_waterElectrolysis', 'solar', 'energy') = -473.9336;
coeff_process_praq('solar-to-hydrogen_waterElectrolysis', 'hydrogen', 'mass') = 1;
coeff_process_praq('solar-to-hydrogen_waterElectrolysis', 'water', 'mass') = -1.789573;
