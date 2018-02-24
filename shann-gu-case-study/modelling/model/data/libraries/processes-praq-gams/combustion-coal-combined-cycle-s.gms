* combustion-coal-combined-cycle-s
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-coal-combined-cycle-s', 'wint') = 400;
rate_process_max('combustion-coal-combined-cycle-s', 'sum') = 400;
rate_process_max('combustion-coal-combined-cycle-s', 'shoulder') = 400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-coal-combined-cycle-s', 'coal', 'mass') = -0.07843137;
coeff_process_praq('combustion-coal-combined-cycle-s', 'elec', 'energy') = 1;
coeff_process_praq('combustion-coal-combined-cycle-s', 'heat', 'energy') = 0.9607843;
coeff_process_praq('combustion-coal-combined-cycle-s', 'water', 'mass') = -0.8627451;
coeff_process_praq('combustion-coal-combined-cycle-s', 'ash', 'mass') = 0.007843137;
