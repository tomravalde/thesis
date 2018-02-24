* biochemical_woodChips_ethanol-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biochemical_woodChips_ethanol-l', 'wint') = 19.543;
rate_process_max('biochemical_woodChips_ethanol-l', 'sum') = 19.543;
rate_process_max('biochemical_woodChips_ethanol-l', 'shoulder') = 19.543;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biochemical_woodChips_ethanol-l', 'biomass', 'mass') = -2.36895;
coeff_process_praq('biochemical_woodChips_ethanol-l', 'water', 'mass') = -1.807496;
coeff_process_praq('biochemical_woodChips_ethanol-l', 'CO2', 'mass') = 1.586629;
coeff_process_praq('biochemical_woodChips_ethanol-l', 'ethanol', 'mass') = 0.3224513;
coeff_process_praq('biochemical_woodChips_ethanol-l', 'elec', 'energy') = 1;
coeff_process_praq('biochemical_woodChips_ethanol-l', 'waste', 'mass') = 0.07878638;
