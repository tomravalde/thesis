* MSW-splitter
PARAMETER
rate_process_max(P,T);
rate_process_max('MSW-splitter', 'wint') = 1000;
rate_process_max('MSW-splitter', 'sum') = 1000;
rate_process_max('MSW-splitter', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('MSW-splitter', 'MSW', 'mass') = -1;
coeff_process_praq('MSW-splitter', 'recyclables', 'mass') = 0.2;
coeff_process_praq('MSW-splitter', 'vegWaste', 'mass') = 0.08;
coeff_process_praq('MSW-splitter', 'waste_organic', 'mass') = 0.12;
coeff_process_praq('MSW-splitter', 'waste', 'mass') = 0.6;
