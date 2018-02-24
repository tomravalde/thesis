* treatment_wastewater
PARAMETER
rate_process_max(P,T);
rate_process_max('treatment_wastewater', 'wint') = 1157;
rate_process_max('treatment_wastewater', 'sum') = 1157;
rate_process_max('treatment_wastewater', 'shoulder') = 1157;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('treatment_wastewater', 'wastewater', 'mass') = -1;
coeff_process_praq('treatment_wastewater', 'water', 'mass') = 1;
