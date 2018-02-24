* biomass-to-methanol-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biomass-to-methanol-l', 'wint') = 5.06;
rate_process_max('biomass-to-methanol-l', 'sum') = 5.06;
rate_process_max('biomass-to-methanol-l', 'shoulder') = 5.06;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biomass-to-methanol-l', 'wood', 'mass') = -4.468937;
coeff_process_praq('biomass-to-methanol-l', 'water', 'mass') = -1.265778;
coeff_process_praq('biomass-to-methanol-l', 'elec', 'energy') = -2.39013;
coeff_process_praq('biomass-to-methanol-l', 'heat', 'energy') = 4.501727;
coeff_process_praq('biomass-to-methanol-l', 'methanol', 'mass') = 1;
coeff_process_praq('biomass-to-methanol-l', 'wastewater', 'mass') = 1.493776;
coeff_process_praq('biomass-to-methanol-l', 'ash', 'mass') = 0.3445194;
