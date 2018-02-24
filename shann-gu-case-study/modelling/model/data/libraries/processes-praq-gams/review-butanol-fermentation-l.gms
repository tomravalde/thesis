* review-butanol-fermentation-l
PARAMETER
rate_process_max(P,T);
rate_process_max('review-butanol-fermentation-l', 'wint') = 3.56;
rate_process_max('review-butanol-fermentation-l', 'sum') = 3.56;
rate_process_max('review-butanol-fermentation-l', 'shoulder') = 3.56;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('review-butanol-fermentation-l', 'biomass', 'mass') = -5.555556;
coeff_process_praq('review-butanol-fermentation-l', 'butanol', 'mass') = 1;
coeff_process_praq('review-butanol-fermentation-l', 'heat', 'energy') = -1.6;
coeff_process_praq('review-butanol-fermentation-l', 'digestate', 'mass') = 1.666667;
