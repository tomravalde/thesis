* biochemical_wheatStraw_ethanol-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biochemical_wheatStraw_ethanol-l', 'wint') = 20.299;
rate_process_max('biochemical_wheatStraw_ethanol-l', 'sum') = 20.299;
rate_process_max('biochemical_wheatStraw_ethanol-l', 'shoulder') = 20.299;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biochemical_wheatStraw_ethanol-l', 'biomass', 'mass') = -1.268481;
coeff_process_praq('biochemical_wheatStraw_ethanol-l', 'water', 'mass') = -2.655057;
coeff_process_praq('biochemical_wheatStraw_ethanol-l', 'CO2', 'mass') = 1.319893;
coeff_process_praq('biochemical_wheatStraw_ethanol-l', 'ethanol', 'mass') = 0.2664335;
coeff_process_praq('biochemical_wheatStraw_ethanol-l', 'elec', 'energy') = 1;
coeff_process_praq('biochemical_wheatStraw_ethanol-l', 'waste', 'mass') = 0.09316277;
