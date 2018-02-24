* CHP-steam-small_biogas
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-small_biogas', 'wint') = 0.5;
rate_process_max('CHP-steam-small_biogas', 'sum') = 0.5;
rate_process_max('CHP-steam-small_biogas', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-small_biogas', 'biogas', 'mass') = -0.569152;
coeff_process_praq('CHP-steam-small_biogas', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-small_biogas', 'heat', 'energy') = 15;
