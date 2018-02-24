* review-butanol-fermentation-s
PARAMETER
rate_process_max(P,T);
rate_process_max('review-butanol-fermentation-s', 'wint') = 0.5996;
rate_process_max('review-butanol-fermentation-s', 'sum') = 0.5996;
rate_process_max('review-butanol-fermentation-s', 'shoulder') = 0.5996;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('review-butanol-fermentation-s', 'biomass', 'mass') = -5.555556;
coeff_process_praq('review-butanol-fermentation-s', 'butanol', 'mass') = 1;
coeff_process_praq('review-butanol-fermentation-s', 'heat', 'energy') = -1.6;
coeff_process_praq('review-butanol-fermentation-s', 'digestate', 'mass') = 1.666667;
