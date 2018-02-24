* surfaceWater_treatment-potable-l
PARAMETER
rate_process_max(P,T);
rate_process_max('surfaceWater_treatment-potable-l', 'wint') = 46296.3;
rate_process_max('surfaceWater_treatment-potable-l', 'sum') = 46296.3;
rate_process_max('surfaceWater_treatment-potable-l', 'shoulder') = 46296.3;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('surfaceWater_treatment-potable-l', 'water', 'mass') = -1;
coeff_process_praq('surfaceWater_treatment-potable-l', 'elec', 'energy') = -9e-04;
coeff_process_praq('surfaceWater_treatment-potable-l', 'waterPotable', 'mass') = 1;
