* waste-generaliser-recyclable
PARAMETER
rate_process_max(P,T);
rate_process_max('waste-generaliser-recyclable', 'wint') = 1000;
rate_process_max('waste-generaliser-recyclable', 'sum') = 1000;
rate_process_max('waste-generaliser-recyclable', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('waste-generaliser-recyclable', 'recyclables', 'mass') = -1;
coeff_process_praq('waste-generaliser-recyclable', 'waste', 'mass') = 1;
