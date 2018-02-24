* fossilHydrogen_intrinsicCO2capture
PARAMETER
rate_process_max(P,T);
rate_process_max('fossilHydrogen_intrinsicCO2capture', 'wint') = 1.56;
rate_process_max('fossilHydrogen_intrinsicCO2capture', 'sum') = 1.56;
rate_process_max('fossilHydrogen_intrinsicCO2capture', 'shoulder') = 1.56;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('fossilHydrogen_intrinsicCO2capture', 'coal', 'mass') = -0.1592;
coeff_process_praq('fossilHydrogen_intrinsicCO2capture', 'water', 'mass') = -19.8;
coeff_process_praq('fossilHydrogen_intrinsicCO2capture', 'hydrogen', 'mass') = 1;
coeff_process_praq('fossilHydrogen_intrinsicCO2capture', 'waste', 'mass') = 0.2016;
coeff_process_praq('fossilHydrogen_intrinsicCO2capture', 'CO2', 'mass') = 8.889;
