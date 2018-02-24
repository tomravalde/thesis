* microalgae-biodiesel-s
PARAMETER
rate_process_max(P,T);
rate_process_max('microalgae-biodiesel-s', 'wint') = 0.00317;
rate_process_max('microalgae-biodiesel-s', 'sum') = 0.00317;
rate_process_max('microalgae-biodiesel-s', 'shoulder') = 0.00317;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('microalgae-biodiesel-s', 'algaeDry', 'mass') = -5.617978;
coeff_process_praq('microalgae-biodiesel-s', 'elec', 'energy') = -22.92135;
coeff_process_praq('microalgae-biodiesel-s', 'heat', 'energy') = -26.51685;
coeff_process_praq('microalgae-biodiesel-s', 'biodiesel', 'mass') = 1;
coeff_process_praq('microalgae-biodiesel-s', 'digestate', 'mass') = 1.741573;
coeff_process_praq('microalgae-biodiesel-s', 'CO2', 'mass') = 2.292135;
coeff_process_praq('microalgae-biodiesel-s', 'methane', 'mass') = 4.511236;
