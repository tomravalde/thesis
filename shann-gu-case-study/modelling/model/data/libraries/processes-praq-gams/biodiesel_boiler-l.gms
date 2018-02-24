* biodiesel_boiler-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biodiesel_boiler-l', 'wint') = 0.512;
rate_process_max('biodiesel_boiler-l', 'sum') = 0.512;
rate_process_max('biodiesel_boiler-l', 'shoulder') = 0.512;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biodiesel_boiler-l', 'biodiesel', 'mass') = -0.03443333;
coeff_process_praq('biodiesel_boiler-l', 'heat', 'energy') = 1;
