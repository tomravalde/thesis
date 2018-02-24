* waste-generaliser-vegWaste
PARAMETER
rate_process_max(P,T);
rate_process_max('waste-generaliser-vegWaste', 'wint') = 1000;
rate_process_max('waste-generaliser-vegWaste', 'sum') = 1000;
rate_process_max('waste-generaliser-vegWaste', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('waste-generaliser-vegWaste', 'vegWaste', 'mass') = -1;
coeff_process_praq('waste-generaliser-vegWaste', 'waste', 'mass') = 1;
