* elecplant_hydrogenLooping-l
PARAMETER
rate_process_max(P,T);
rate_process_max('elecplant_hydrogenLooping-l', 'wint') = 12;
rate_process_max('elecplant_hydrogenLooping-l', 'sum') = 12;
rate_process_max('elecplant_hydrogenLooping-l', 'shoulder') = 12;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('elecplant_hydrogenLooping-l', 'coal', 'mass') = -0.08534684;
coeff_process_praq('elecplant_hydrogenLooping-l', 'elec', 'energy') = 1;
coeff_process_praq('elecplant_hydrogenLooping-l', 'CO2', 'mass') = 0.0108106;
coeff_process_praq('elecplant_hydrogenLooping-l', 'waterNonPotable', 'mass') = -0.6819619;
coeff_process_praq('elecplant_hydrogenLooping-l', 'ash', 'mass') = 0.008534684;
