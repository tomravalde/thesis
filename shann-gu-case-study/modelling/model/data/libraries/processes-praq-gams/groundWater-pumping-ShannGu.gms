* groundWater-pumping-ShannGu
PARAMETER
rate_process_max(P,T);
rate_process_max('groundWater-pumping-ShannGu', 'wint') = 0.048;
rate_process_max('groundWater-pumping-ShannGu', 'sum') = 0.048;
rate_process_max('groundWater-pumping-ShannGu', 'shoulder') = 0.048;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('groundWater-pumping-ShannGu', 'groundWater', 'mass') = -1;
coeff_process_praq('groundWater-pumping-ShannGu', 'elec', 'energy') = -2e-04;
coeff_process_praq('groundWater-pumping-ShannGu', 'water', 'mass') = 1;
