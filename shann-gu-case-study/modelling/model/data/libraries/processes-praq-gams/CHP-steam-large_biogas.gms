* CHP-steam-large_biogas
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-steam-large_biogas', 'wint') = 500;
rate_process_max('CHP-steam-large_biogas', 'sum') = 500;
rate_process_max('CHP-steam-large_biogas', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-steam-large_biogas', 'biogas', 'mass') = -0.07119;
coeff_process_praq('CHP-steam-large_biogas', 'elec', 'energy') = 1;
coeff_process_praq('CHP-steam-large_biogas', 'heat', 'energy') = 1;
