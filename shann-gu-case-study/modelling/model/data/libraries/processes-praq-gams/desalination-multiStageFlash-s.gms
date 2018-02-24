* desalination-multiStageFlash-s
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-multiStageFlash-s', 'wint') = 2.3148;
rate_process_max('desalination-multiStageFlash-s', 'sum') = 2.3148;
rate_process_max('desalination-multiStageFlash-s', 'shoulder') = 2.3148;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-multiStageFlash-s', 'seawater', 'mass') = -3;
coeff_process_praq('desalination-multiStageFlash-s', 'water', 'mass') = 1;
coeff_process_praq('desalination-multiStageFlash-s', 'elec', 'energy') = 0.018;
coeff_process_praq('desalination-multiStageFlash-s', 'heat', 'energy') = 0.25;
