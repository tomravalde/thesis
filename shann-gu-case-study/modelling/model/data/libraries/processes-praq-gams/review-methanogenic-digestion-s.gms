* review-methanogenic-digestion-s
PARAMETER
rate_process_max(P,T);
rate_process_max('review-methanogenic-digestion-s', 'wint') = 0.122;
rate_process_max('review-methanogenic-digestion-s', 'sum') = 0.122;
rate_process_max('review-methanogenic-digestion-s', 'shoulder') = 0.122;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('review-methanogenic-digestion-s', 'biomass', 'mass') = -3.861153;
coeff_process_praq('review-methanogenic-digestion-s', 'methane', 'mass') = 1;
coeff_process_praq('review-methanogenic-digestion-s', 'heat', 'energy') = -1.112012;
coeff_process_praq('review-methanogenic-digestion-s', 'digestate', 'mass') = 1.158346;
