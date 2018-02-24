* waste-generaliser-MSW
PARAMETER
rate_process_max(P,T);
rate_process_max('waste-generaliser-MSW', 'wint') = 1000;
rate_process_max('waste-generaliser-MSW', 'sum') = 1000;
rate_process_max('waste-generaliser-MSW', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('waste-generaliser-MSW', 'MSW', 'mass') = -1;
coeff_process_praq('waste-generaliser-MSW', 'waste', 'mass') = 1;
