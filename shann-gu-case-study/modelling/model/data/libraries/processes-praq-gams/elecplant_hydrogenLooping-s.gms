* elecplant_hydrogenLooping-s
PARAMETER
rate_process_max(P,T);
rate_process_max('elecplant_hydrogenLooping-s', 'wint') = 10;
rate_process_max('elecplant_hydrogenLooping-s', 'sum') = 10;
rate_process_max('elecplant_hydrogenLooping-s', 'shoulder') = 10;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('elecplant_hydrogenLooping-s', 'coal', 'mass') = -0.08534684;
coeff_process_praq('elecplant_hydrogenLooping-s', 'elec', 'energy') = 1;
coeff_process_praq('elecplant_hydrogenLooping-s', 'CO2', 'mass') = 0.0108106;
coeff_process_praq('elecplant_hydrogenLooping-s', 'waterNonPotable', 'mass') = -0.6819619;
coeff_process_praq('elecplant_hydrogenLooping-s', 'ash', 'mass') = 0.008534684;
