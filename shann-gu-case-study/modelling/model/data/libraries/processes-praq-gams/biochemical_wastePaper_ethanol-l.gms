* biochemical_wastePaper_ethanol-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biochemical_wastePaper_ethanol-l', 'wint') = 22.989;
rate_process_max('biochemical_wastePaper_ethanol-l', 'sum') = 22.989;
rate_process_max('biochemical_wastePaper_ethanol-l', 'shoulder') = 22.989;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biochemical_wastePaper_ethanol-l', 'biomass', 'mass') = -1.194811;
coeff_process_praq('biochemical_wastePaper_ethanol-l', 'water', 'mass') = -2.792652;
coeff_process_praq('biochemical_wastePaper_ethanol-l', 'CO2', 'mass') = 0.9495725;
coeff_process_praq('biochemical_wastePaper_ethanol-l', 'ethanol', 'mass') = 0.2971107;
coeff_process_praq('biochemical_wastePaper_ethanol-l', 'elec', 'energy') = 1;
coeff_process_praq('biochemical_wastePaper_ethanol-l', 'waste', 'mass') = 0.08226156;
