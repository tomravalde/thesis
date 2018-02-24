* biodiesel_boiler-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biodiesel_boiler-s', 'wint') = 0.025;
rate_process_max('biodiesel_boiler-s', 'sum') = 0.025;
rate_process_max('biodiesel_boiler-s', 'shoulder') = 0.025;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biodiesel_boiler-s', 'biodiesel', 'mass') = -0.03443333;
coeff_process_praq('biodiesel_boiler-s', 'heat', 'energy') = 1;
