* surfaceWater_treatment-potable-s
PARAMETER
rate_process_max(P,T);
rate_process_max('surfaceWater_treatment-potable-s', 'wint') = 7.41;
rate_process_max('surfaceWater_treatment-potable-s', 'sum') = 7.41;
rate_process_max('surfaceWater_treatment-potable-s', 'shoulder') = 7.41;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('surfaceWater_treatment-potable-s', 'water', 'mass') = -1;
coeff_process_praq('surfaceWater_treatment-potable-s', 'elec', 'energy') = -9e-04;
coeff_process_praq('surfaceWater_treatment-potable-s', 'waterPotable', 'mass') = 1;
