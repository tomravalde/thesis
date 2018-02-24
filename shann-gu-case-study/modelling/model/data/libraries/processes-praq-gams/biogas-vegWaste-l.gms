* biogas-vegWaste-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-vegWaste-l', 'wint') = 0.254;
rate_process_max('biogas-vegWaste-l', 'sum') = 0.254;
rate_process_max('biogas-vegWaste-l', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-vegWaste-l', 'vegWaste', 'mass') = -5.075884;
coeff_process_praq('biogas-vegWaste-l', 'methane', 'mass') = 1;
coeff_process_praq('biogas-vegWaste-l', 'CO2', 'mass') = 1.624131;
coeff_process_praq('biogas-vegWaste-l', 'digestate', 'mass') = 1.522765;
