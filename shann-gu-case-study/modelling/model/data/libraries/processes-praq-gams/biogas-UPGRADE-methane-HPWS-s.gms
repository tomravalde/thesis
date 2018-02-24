* biogas-UPGRADE-methane-HPWS-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-UPGRADE-methane-HPWS-s', 'wint') = 0.24;
rate_process_max('biogas-UPGRADE-methane-HPWS-s', 'sum') = 0.24;
rate_process_max('biogas-UPGRADE-methane-HPWS-s', 'shoulder') = 0.24;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-UPGRADE-methane-HPWS-s', 'elec', 'energy') = -2.234994;
coeff_process_praq('biogas-UPGRADE-methane-HPWS-s', 'water', 'mass') = 0;
coeff_process_praq('biogas-UPGRADE-methane-HPWS-s', 'biogas', 'mass') = -3.065715;
coeff_process_praq('biogas-UPGRADE-methane-HPWS-s', 'methane', 'mass') = 1;
