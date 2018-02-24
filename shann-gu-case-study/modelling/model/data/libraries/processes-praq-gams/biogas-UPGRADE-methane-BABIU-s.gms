* biogas-UPGRADE-methane-BABIU-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-UPGRADE-methane-BABIU-s', 'wint') = 0.24;
rate_process_max('biogas-UPGRADE-methane-BABIU-s', 'sum') = 0.24;
rate_process_max('biogas-UPGRADE-methane-BABIU-s', 'shoulder') = 0.24;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-UPGRADE-methane-BABIU-s', 'elec', 'energy') = -0.9184509;
coeff_process_praq('biogas-UPGRADE-methane-BABIU-s', 'water', 'mass') = 0;
coeff_process_praq('biogas-UPGRADE-methane-BABIU-s', 'biogas', 'mass') = -3.065696;
coeff_process_praq('biogas-UPGRADE-methane-BABIU-s', 'methane', 'mass') = 1;
coeff_process_praq('biogas-UPGRADE-methane-BABIU-s', 'ash', 'mass') = 0;
