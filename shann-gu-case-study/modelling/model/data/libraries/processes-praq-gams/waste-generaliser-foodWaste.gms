* waste-generaliser-foodWaste
PARAMETER
rate_process_max(P,T);
rate_process_max('waste-generaliser-foodWaste', 'wint') = 1000;
rate_process_max('waste-generaliser-foodWaste', 'sum') = 1000;
rate_process_max('waste-generaliser-foodWaste', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('waste-generaliser-foodWaste', 'foodWaste', 'mass') = -1;
coeff_process_praq('waste-generaliser-foodWaste', 'waste', 'mass') = 1;
