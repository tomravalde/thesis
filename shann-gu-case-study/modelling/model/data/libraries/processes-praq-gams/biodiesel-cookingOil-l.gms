* biodiesel-cookingOil-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biodiesel-cookingOil-l', 'wint') = 0.12;
rate_process_max('biodiesel-cookingOil-l', 'sum') = 0.12;
rate_process_max('biodiesel-cookingOil-l', 'shoulder') = 0.12;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biodiesel-cookingOil-l', 'oilUsed', 'mass') = -1.054545;
coeff_process_praq('biodiesel-cookingOil-l', 'elec', 'energy') = -0.05318182;
coeff_process_praq('biodiesel-cookingOil-l', 'methanol', 'mass') = -0.0967375;
coeff_process_praq('biodiesel-cookingOil-l', 'biodiesel', 'mass') = 1;
coeff_process_praq('biodiesel-cookingOil-l', 'water', 'mass') = 0.01136364;
