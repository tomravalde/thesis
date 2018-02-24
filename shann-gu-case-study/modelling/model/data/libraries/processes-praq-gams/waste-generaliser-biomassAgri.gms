* waste-generaliser-biomassAgri
PARAMETER
rate_process_max(P,T);
rate_process_max('waste-generaliser-biomassAgri', 'wint') = 1000;
rate_process_max('waste-generaliser-biomassAgri', 'sum') = 1000;
rate_process_max('waste-generaliser-biomassAgri', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('waste-generaliser-biomassAgri', 'biomassAgriWaste', 'mass') = -1;
coeff_process_praq('waste-generaliser-biomassAgri', 'waste', 'mass') = 1;
