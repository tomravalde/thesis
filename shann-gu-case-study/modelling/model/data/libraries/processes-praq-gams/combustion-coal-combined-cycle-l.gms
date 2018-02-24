* combustion-coal-combined-cycle-l
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-coal-combined-cycle-l', 'wint') = 2400;
rate_process_max('combustion-coal-combined-cycle-l', 'sum') = 2400;
rate_process_max('combustion-coal-combined-cycle-l', 'shoulder') = 2400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-coal-combined-cycle-l', 'coal', 'mass') = -0.07843137;
coeff_process_praq('combustion-coal-combined-cycle-l', 'elec', 'energy') = 1;
coeff_process_praq('combustion-coal-combined-cycle-l', 'heat', 'energy') = 0.9607843;
coeff_process_praq('combustion-coal-combined-cycle-l', 'water', 'mass') = -0.8627451;
coeff_process_praq('combustion-coal-combined-cycle-l', 'ash', 'mass') = 0.007843137;
