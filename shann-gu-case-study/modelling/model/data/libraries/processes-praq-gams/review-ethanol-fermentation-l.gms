* review-ethanol-fermentation-l
PARAMETER
rate_process_max(P,T);
rate_process_max('review-ethanol-fermentation-l', 'wint') = 1.27;
rate_process_max('review-ethanol-fermentation-l', 'sum') = 1.27;
rate_process_max('review-ethanol-fermentation-l', 'shoulder') = 1.27;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('review-ethanol-fermentation-l', 'biomass', 'mass') = -0.001785714;
coeff_process_praq('review-ethanol-fermentation-l', 'ethanol', 'mass') = 1;
coeff_process_praq('review-ethanol-fermentation-l', 'heat', 'energy') = -0.5339286;
coeff_process_praq('review-ethanol-fermentation-l', 'digestate', 'mass') = 0.5357143;
