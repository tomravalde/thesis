* waste-generaliser-organic
PARAMETER
rate_process_max(P,T);
rate_process_max('waste-generaliser-organic', 'wint') = 1000;
rate_process_max('waste-generaliser-organic', 'sum') = 1000;
rate_process_max('waste-generaliser-organic', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('waste-generaliser-organic', 'waste_organic', 'mass') = -1;
coeff_process_praq('waste-generaliser-organic', 'waste', 'mass') = 1;
