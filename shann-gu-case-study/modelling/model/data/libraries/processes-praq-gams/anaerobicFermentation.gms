* anaerobicFermentation
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicFermentation', 'wint') = 1157;
rate_process_max('anaerobicFermentation', 'sum') = 1157;
rate_process_max('anaerobicFermentation', 'shoulder') = 1157;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicFermentation', 'waste_organic', 'mass') = -1;
coeff_process_praq('anaerobicFermentation', 'gasNatural', 'mass') = 1.25;
