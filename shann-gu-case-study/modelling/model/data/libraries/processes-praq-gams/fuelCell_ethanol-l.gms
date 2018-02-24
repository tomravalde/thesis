* fuelCell_ethanol-l
PARAMETER
rate_process_max(P,T);
rate_process_max('fuelCell_ethanol-l', 'wint') = 0.015;
rate_process_max('fuelCell_ethanol-l', 'sum') = 0.015;
rate_process_max('fuelCell_ethanol-l', 'shoulder') = 0.015;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('fuelCell_ethanol-l', 'ethanol', 'mass') = -0.08813953;
coeff_process_praq('fuelCell_ethanol-l', 'elec', 'energy') = 1;
coeff_process_praq('fuelCell_ethanol-l', 'CO2', 'mass') = 0.1545116;
