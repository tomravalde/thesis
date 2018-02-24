* review-biomass-MFC-elec-butanol-s
PARAMETER
rate_process_max(P,T);
rate_process_max('review-biomass-MFC-elec-butanol-s', 'wint') = 0.122;
rate_process_max('review-biomass-MFC-elec-butanol-s', 'sum') = 0.122;
rate_process_max('review-biomass-MFC-elec-butanol-s', 'shoulder') = 0.122;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('review-biomass-MFC-elec-butanol-s', 'biomass', 'mass') = -0.7142857;
coeff_process_praq('review-biomass-MFC-elec-butanol-s', 'elec', 'energy') = 1;
coeff_process_praq('review-biomass-MFC-elec-butanol-s', 'heat', 'energy') = -0.2057143;
coeff_process_praq('review-biomass-MFC-elec-butanol-s', 'digestate', 'mass') = 0.2142857;
