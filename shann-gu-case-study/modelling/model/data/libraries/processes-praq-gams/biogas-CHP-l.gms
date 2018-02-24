* biogas-CHP-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-CHP-l', 'wint') = 300;
rate_process_max('biogas-CHP-l', 'sum') = 300;
rate_process_max('biogas-CHP-l', 'shoulder') = 300;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-CHP-l', 'biogas', 'mass') = -0.0003123362;
coeff_process_praq('biogas-CHP-l', 'elec', 'energy') = 1;
coeff_process_praq('biogas-CHP-l', 'heat', 'energy') = 1.032583;
coeff_process_praq('biogas-CHP-l', 'CO2', 'mass') = 0;
