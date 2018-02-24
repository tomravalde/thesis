* combustion-sludgeDigested-l
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-sludgeDigested-l', 'wint') = 0.9474;
rate_process_max('combustion-sludgeDigested-l', 'sum') = 0.9474;
rate_process_max('combustion-sludgeDigested-l', 'shoulder') = 0.9474;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-sludgeDigested-l', 'digestate', 'mass') = -4.644097;
coeff_process_praq('combustion-sludgeDigested-l', 'gasNatural', 'mass') = -0.2361241;
coeff_process_praq('combustion-sludgeDigested-l', 'elec', 'energy') = 1;
coeff_process_praq('combustion-sludgeDigested-l', 'heat', 'energy') = 11.25781;
coeff_process_praq('combustion-sludgeDigested-l', 'ash', 'mass') = 0.78125;
coeff_process_praq('combustion-sludgeDigested-l', 'water', 'mass') = -40.53819;
coeff_process_praq('combustion-sludgeDigested-l', 'CO2', 'mass') = 0.646875;
