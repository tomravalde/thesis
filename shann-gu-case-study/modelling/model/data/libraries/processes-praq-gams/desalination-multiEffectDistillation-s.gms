* desalination-multiEffectDistillation-s
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-multiEffectDistillation-s', 'wint') = 2.3148;
rate_process_max('desalination-multiEffectDistillation-s', 'sum') = 2.3148;
rate_process_max('desalination-multiEffectDistillation-s', 'shoulder') = 2.3148;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-multiEffectDistillation-s', 'seawater', 'mass') = -3;
coeff_process_praq('desalination-multiEffectDistillation-s', 'water', 'mass') = 1;
coeff_process_praq('desalination-multiEffectDistillation-s', 'elec', 'energy') = 0.0072;
coeff_process_praq('desalination-multiEffectDistillation-s', 'heat', 'energy') = 0.32;
