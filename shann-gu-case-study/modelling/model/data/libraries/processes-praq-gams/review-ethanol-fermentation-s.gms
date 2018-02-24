* review-ethanol-fermentation-s
PARAMETER
rate_process_max(P,T);
rate_process_max('review-ethanol-fermentation-s', 'wint') = 0.122;
rate_process_max('review-ethanol-fermentation-s', 'sum') = 0.122;
rate_process_max('review-ethanol-fermentation-s', 'shoulder') = 0.122;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('review-ethanol-fermentation-s', 'biomass', 'mass') = -0.001785714;
coeff_process_praq('review-ethanol-fermentation-s', 'ethanol', 'mass') = 1;
coeff_process_praq('review-ethanol-fermentation-s', 'heat', 'energy') = -0.5339286;
coeff_process_praq('review-ethanol-fermentation-s', 'digestate', 'mass') = 0.5357143;
