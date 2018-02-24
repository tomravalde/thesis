* waste-generaliser-digestate
PARAMETER
rate_process_max(P,T);
rate_process_max('waste-generaliser-digestate', 'wint') = 1000;
rate_process_max('waste-generaliser-digestate', 'sum') = 1000;
rate_process_max('waste-generaliser-digestate', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('waste-generaliser-digestate', 'digestate', 'mass') = -1;
coeff_process_praq('waste-generaliser-digestate', 'waste', 'mass') = 1;
