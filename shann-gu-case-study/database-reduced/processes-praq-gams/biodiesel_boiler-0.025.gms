* biodiesel_boiler-0.025
PARAMETER
rate_process_max(P);
rate_process_max('biodiesel_boiler-0.025') = 0.025;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biodiesel_boiler-0.025', 'biodiesel', 'mass') = -0.03443333;
coeff_process_praq('biodiesel_boiler-0.025', 'heat', 'energy') = 1;
