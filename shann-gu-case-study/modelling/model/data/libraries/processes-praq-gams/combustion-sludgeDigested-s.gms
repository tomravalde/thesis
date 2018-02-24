* combustion-sludgeDigested-s
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-sludgeDigested-s', 'wint') = 0.00935;
rate_process_max('combustion-sludgeDigested-s', 'sum') = 0.00935;
rate_process_max('combustion-sludgeDigested-s', 'shoulder') = 0.00935;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-sludgeDigested-s', 'digestate', 'mass') = -4.644097;
coeff_process_praq('combustion-sludgeDigested-s', 'gasNatural', 'mass') = -0.2361241;
coeff_process_praq('combustion-sludgeDigested-s', 'elec', 'energy') = 1;
coeff_process_praq('combustion-sludgeDigested-s', 'heat', 'energy') = 11.25781;
coeff_process_praq('combustion-sludgeDigested-s', 'ash', 'mass') = 0.78125;
coeff_process_praq('combustion-sludgeDigested-s', 'water', 'mass') = -40.53819;
coeff_process_praq('combustion-sludgeDigested-s', 'CO2', 'mass') = 0.646875;
