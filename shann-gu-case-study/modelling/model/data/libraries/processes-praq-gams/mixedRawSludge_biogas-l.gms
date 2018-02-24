* mixedRawSludge_biogas-l
PARAMETER
rate_process_max(P,T);
rate_process_max('mixedRawSludge_biogas-l', 'wint') = 1.284;
rate_process_max('mixedRawSludge_biogas-l', 'sum') = 1.284;
rate_process_max('mixedRawSludge_biogas-l', 'shoulder') = 1.284;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('mixedRawSludge_biogas-l', 'sludge', 'mass') = -2.409607;
coeff_process_praq('mixedRawSludge_biogas-l', 'biogas', 'mass') = 1;
coeff_process_praq('mixedRawSludge_biogas-l', 'heat', 'energy') = -6.009691;
coeff_process_praq('mixedRawSludge_biogas-l', 'elec', 'energy') = -0.3469834;
coeff_process_praq('mixedRawSludge_biogas-l', 'digestate', 'mass') = 1.54128;
