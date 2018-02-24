* CHP
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP', 'wint') = 6;
rate_process_max('CHP', 'sum') = 6;
rate_process_max('CHP', 'shoulder') = 6;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP', 'elec', 'energy') = 1;
coeff_process_praq('CHP', 'heat', 'energy') = 0.956;
coeff_process_praq('CHP', 'gasNatural', 'mass') = -0.0474;
coeff_process_praq('CHP', 'CO2', 'mass') = 0.134;
