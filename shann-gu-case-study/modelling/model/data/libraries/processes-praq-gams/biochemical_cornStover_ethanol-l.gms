* biochemical_cornStover_ethanol-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biochemical_cornStover_ethanol-l', 'wint') = 18.248;
rate_process_max('biochemical_cornStover_ethanol-l', 'sum') = 18.248;
rate_process_max('biochemical_cornStover_ethanol-l', 'shoulder') = 18.248;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biochemical_cornStover_ethanol-l', 'biomass', 'mass') = -1.493435;
coeff_process_praq('biochemical_cornStover_ethanol-l', 'water', 'mass') = -2.841672;
coeff_process_praq('biochemical_cornStover_ethanol-l', 'CO2', 'mass') = 1.305745;
coeff_process_praq('biochemical_cornStover_ethanol-l', 'ethanol', 'mass') = 0.3486149;
coeff_process_praq('biochemical_cornStover_ethanol-l', 'elec', 'energy') = 1;
coeff_process_praq('biochemical_cornStover_ethanol-l', 'waste', 'mass') = 0.1036497;
