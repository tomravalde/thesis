* mixedRawSludge_biogas-s
PARAMETER
rate_process_max(P,T);
rate_process_max('mixedRawSludge_biogas-s', 'wint') = 0.0116;
rate_process_max('mixedRawSludge_biogas-s', 'sum') = 0.0116;
rate_process_max('mixedRawSludge_biogas-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('mixedRawSludge_biogas-s', 'sludge', 'mass') = -2.409607;
coeff_process_praq('mixedRawSludge_biogas-s', 'biogas', 'mass') = 1;
coeff_process_praq('mixedRawSludge_biogas-s', 'heat', 'energy') = -6.009691;
coeff_process_praq('mixedRawSludge_biogas-s', 'elec', 'energy') = -0.3469834;
coeff_process_praq('mixedRawSludge_biogas-s', 'digestate', 'mass') = 1.54128;
