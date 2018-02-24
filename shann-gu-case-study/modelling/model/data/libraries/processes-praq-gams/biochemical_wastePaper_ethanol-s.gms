* biochemical_wastePaper_ethanol-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biochemical_wastePaper_ethanol-s', 'wint') = 0.0084985;
rate_process_max('biochemical_wastePaper_ethanol-s', 'sum') = 0.0084985;
rate_process_max('biochemical_wastePaper_ethanol-s', 'shoulder') = 0.0084985;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biochemical_wastePaper_ethanol-s', 'biomass', 'mass') = -1.194811;
coeff_process_praq('biochemical_wastePaper_ethanol-s', 'water', 'mass') = -2.792652;
coeff_process_praq('biochemical_wastePaper_ethanol-s', 'CO2', 'mass') = 0.9495725;
coeff_process_praq('biochemical_wastePaper_ethanol-s', 'ethanol', 'mass') = 0.2971107;
coeff_process_praq('biochemical_wastePaper_ethanol-s', 'elec', 'energy') = 1;
coeff_process_praq('biochemical_wastePaper_ethanol-s', 'waste', 'mass') = 0.08226156;
