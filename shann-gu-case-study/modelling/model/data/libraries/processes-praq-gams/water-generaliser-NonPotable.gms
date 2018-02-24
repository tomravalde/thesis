* water-generaliser-NonPotable
PARAMETER
rate_process_max(P,T);
rate_process_max('water-generaliser-NonPotable', 'wint') = 1000;
rate_process_max('water-generaliser-NonPotable', 'sum') = 1000;
rate_process_max('water-generaliser-NonPotable', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('water-generaliser-NonPotable', 'waterNonPotable', 'mass') = -1;
coeff_process_praq('water-generaliser-NonPotable', 'water', 'mass') = 1;
