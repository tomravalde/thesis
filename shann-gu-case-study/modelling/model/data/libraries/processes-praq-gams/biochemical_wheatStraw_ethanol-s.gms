* biochemical_wheatStraw_ethanol-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biochemical_wheatStraw_ethanol-s', 'wint') = 0.009477;
rate_process_max('biochemical_wheatStraw_ethanol-s', 'sum') = 0.009477;
rate_process_max('biochemical_wheatStraw_ethanol-s', 'shoulder') = 0.009477;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biochemical_wheatStraw_ethanol-s', 'biomass', 'mass') = -1.268481;
coeff_process_praq('biochemical_wheatStraw_ethanol-s', 'water', 'mass') = -2.655057;
coeff_process_praq('biochemical_wheatStraw_ethanol-s', 'CO2', 'mass') = 1.319893;
coeff_process_praq('biochemical_wheatStraw_ethanol-s', 'ethanol', 'mass') = 0.2664335;
coeff_process_praq('biochemical_wheatStraw_ethanol-s', 'elec', 'energy') = 1;
coeff_process_praq('biochemical_wheatStraw_ethanol-s', 'waste', 'mass') = 0.09316277;
