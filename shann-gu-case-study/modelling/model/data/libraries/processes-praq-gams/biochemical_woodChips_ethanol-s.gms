* biochemical_woodChips_ethanol-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biochemical_woodChips_ethanol-s', 'wint') = 0.00783;
rate_process_max('biochemical_woodChips_ethanol-s', 'sum') = 0.00783;
rate_process_max('biochemical_woodChips_ethanol-s', 'shoulder') = 0.00783;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biochemical_woodChips_ethanol-s', 'biomass', 'mass') = -2.36895;
coeff_process_praq('biochemical_woodChips_ethanol-s', 'water', 'mass') = -1.807496;
coeff_process_praq('biochemical_woodChips_ethanol-s', 'CO2', 'mass') = 1.586629;
coeff_process_praq('biochemical_woodChips_ethanol-s', 'ethanol', 'mass') = 0.3224513;
coeff_process_praq('biochemical_woodChips_ethanol-s', 'elec', 'energy') = 1;
coeff_process_praq('biochemical_woodChips_ethanol-s', 'waste', 'mass') = 0.07878638;
