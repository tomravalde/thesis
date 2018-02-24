* biochemical_cornStover_ethanol-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biochemical_cornStover_ethanol-s', 'wint') = 0.007243;
rate_process_max('biochemical_cornStover_ethanol-s', 'sum') = 0.007243;
rate_process_max('biochemical_cornStover_ethanol-s', 'shoulder') = 0.007243;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biochemical_cornStover_ethanol-s', 'biomass', 'mass') = -1.493435;
coeff_process_praq('biochemical_cornStover_ethanol-s', 'water', 'mass') = -2.841672;
coeff_process_praq('biochemical_cornStover_ethanol-s', 'CO2', 'mass') = 1.305745;
coeff_process_praq('biochemical_cornStover_ethanol-s', 'ethanol', 'mass') = 0.3486149;
coeff_process_praq('biochemical_cornStover_ethanol-s', 'elec', 'energy') = 1;
coeff_process_praq('biochemical_cornStover_ethanol-s', 'waste', 'mass') = 0.1036497;
