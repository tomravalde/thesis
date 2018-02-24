* desalination-multiStageFlash-l
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-multiStageFlash-l', 'wint') = 9259.259;
rate_process_max('desalination-multiStageFlash-l', 'sum') = 9259.259;
rate_process_max('desalination-multiStageFlash-l', 'shoulder') = 9259.259;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-multiStageFlash-l', 'seawater', 'mass') = -3;
coeff_process_praq('desalination-multiStageFlash-l', 'water', 'mass') = 1;
coeff_process_praq('desalination-multiStageFlash-l', 'elec', 'energy') = 0.018;
coeff_process_praq('desalination-multiStageFlash-l', 'heat', 'energy') = 0.25;
