* biogas-CHP-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-CHP-s', 'wint') = 0.5;
rate_process_max('biogas-CHP-s', 'sum') = 0.5;
rate_process_max('biogas-CHP-s', 'shoulder') = 0.5;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-CHP-s', 'biogas', 'mass') = -0.0003123362;
coeff_process_praq('biogas-CHP-s', 'elec', 'energy') = 1;
coeff_process_praq('biogas-CHP-s', 'heat', 'energy') = 1.032583;
coeff_process_praq('biogas-CHP-s', 'CO2', 'mass') = 0;
