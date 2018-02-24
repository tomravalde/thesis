* biogas-vegWaste-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-vegWaste-s', 'wint') = 0.24;
rate_process_max('biogas-vegWaste-s', 'sum') = 0.24;
rate_process_max('biogas-vegWaste-s', 'shoulder') = 0.24;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-vegWaste-s', 'vegWaste', 'mass') = -5.075884;
coeff_process_praq('biogas-vegWaste-s', 'methane', 'mass') = 1;
coeff_process_praq('biogas-vegWaste-s', 'CO2', 'mass') = 1.624131;
coeff_process_praq('biogas-vegWaste-s', 'digestate', 'mass') = 1.522765;
