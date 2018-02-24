* review-biomass-MFC-elec-butanol-l
PARAMETER
rate_process_max(P,T);
rate_process_max('review-biomass-MFC-elec-butanol-l', 'wint') = 1.27;
rate_process_max('review-biomass-MFC-elec-butanol-l', 'sum') = 1.27;
rate_process_max('review-biomass-MFC-elec-butanol-l', 'shoulder') = 1.27;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('review-biomass-MFC-elec-butanol-l', 'biomass', 'mass') = -0.7142857;
coeff_process_praq('review-biomass-MFC-elec-butanol-l', 'elec', 'energy') = 1;
coeff_process_praq('review-biomass-MFC-elec-butanol-l', 'heat', 'energy') = -0.2057143;
coeff_process_praq('review-biomass-MFC-elec-butanol-l', 'digestate', 'mass') = 0.2142857;
