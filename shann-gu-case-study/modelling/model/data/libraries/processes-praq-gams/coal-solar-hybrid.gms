* coal-solar-hybrid
PARAMETER
rate_process_max(P,T);
rate_process_max('coal-solar-hybrid', 'wint') = 116.9137;
rate_process_max('coal-solar-hybrid', 'sum') = 116.9137;
rate_process_max('coal-solar-hybrid', 'shoulder') = 116.9137;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('coal-solar-hybrid', 'coal', 'mass') = -0.02309396;
coeff_process_praq('coal-solar-hybrid', 'solar', 'energy') = -2.221083;
coeff_process_praq('coal-solar-hybrid', 'elec', 'energy') = 1;
coeff_process_praq('coal-solar-hybrid', 'water', 'mass') = -0.009921848;
coeff_process_praq('coal-solar-hybrid', 'CO2', 'mass') = 0.05371483;
coeff_process_praq('coal-solar-hybrid', 'ash', 'mass') = 0.002283736;
