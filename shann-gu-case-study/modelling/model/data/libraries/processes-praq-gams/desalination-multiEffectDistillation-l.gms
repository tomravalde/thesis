* desalination-multiEffectDistillation-l
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-multiEffectDistillation-l', 'wint') = 9259.259;
rate_process_max('desalination-multiEffectDistillation-l', 'sum') = 9259.259;
rate_process_max('desalination-multiEffectDistillation-l', 'shoulder') = 9259.259;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-multiEffectDistillation-l', 'seawater', 'mass') = -3;
coeff_process_praq('desalination-multiEffectDistillation-l', 'water', 'mass') = 1;
coeff_process_praq('desalination-multiEffectDistillation-l', 'elec', 'energy') = 0.0072;
coeff_process_praq('desalination-multiEffectDistillation-l', 'heat', 'energy') = 0.32;
