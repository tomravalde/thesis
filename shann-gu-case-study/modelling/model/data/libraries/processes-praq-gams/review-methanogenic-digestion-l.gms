* review-methanogenic-digestion-l
PARAMETER
rate_process_max(P,T);
rate_process_max('review-methanogenic-digestion-l', 'wint') = 1.27;
rate_process_max('review-methanogenic-digestion-l', 'sum') = 1.27;
rate_process_max('review-methanogenic-digestion-l', 'shoulder') = 1.27;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('review-methanogenic-digestion-l', 'biomass', 'mass') = -3.861153;
coeff_process_praq('review-methanogenic-digestion-l', 'methane', 'mass') = 1;
coeff_process_praq('review-methanogenic-digestion-l', 'heat', 'energy') = -1.112012;
coeff_process_praq('review-methanogenic-digestion-l', 'digestate', 'mass') = 1.158346;
