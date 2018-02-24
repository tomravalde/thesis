* biodiesel-cookingOil-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biodiesel-cookingOil-s', 'wint') = 0.0193;
rate_process_max('biodiesel-cookingOil-s', 'sum') = 0.0193;
rate_process_max('biodiesel-cookingOil-s', 'shoulder') = 0.0193;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biodiesel-cookingOil-s', 'oilUsed', 'mass') = -1.054545;
coeff_process_praq('biodiesel-cookingOil-s', 'elec', 'energy') = -0.05318182;
coeff_process_praq('biodiesel-cookingOil-s', 'methanol', 'mass') = -0.0967375;
coeff_process_praq('biodiesel-cookingOil-s', 'biodiesel', 'mass') = 1;
coeff_process_praq('biodiesel-cookingOil-s', 'water', 'mass') = 0.01136364;
