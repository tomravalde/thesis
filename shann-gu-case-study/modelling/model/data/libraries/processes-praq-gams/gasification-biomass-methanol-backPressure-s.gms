* gasification-biomass-methanol-backPressure-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-biomass-methanol-backPressure-s', 'wint') = 0.52;
rate_process_max('gasification-biomass-methanol-backPressure-s', 'sum') = 0.52;
rate_process_max('gasification-biomass-methanol-backPressure-s', 'shoulder') = 0.52;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-biomass-methanol-backPressure-s', 'biomass', 'mass') = -3.089996;
coeff_process_praq('gasification-biomass-methanol-backPressure-s', 'water', 'mass') = -1.544998;
coeff_process_praq('gasification-biomass-methanol-backPressure-s', 'methanol', 'mass') = 1;
coeff_process_praq('gasification-biomass-methanol-backPressure-s', 'elec', 'energy') = 3.167246;
