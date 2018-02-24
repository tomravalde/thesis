* combustion-sludgeRaw-s
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-sludgeRaw-s', 'wint') = 0.00935;
rate_process_max('combustion-sludgeRaw-s', 'sum') = 0.00935;
rate_process_max('combustion-sludgeRaw-s', 'shoulder') = 0.00935;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-sludgeRaw-s', 'sludge', 'mass') = -1.962081;
coeff_process_praq('combustion-sludgeRaw-s', 'gasNatural', 'mass') = -0.04305109;
coeff_process_praq('combustion-sludgeRaw-s', 'elec', 'energy') = 1;
coeff_process_praq('combustion-sludgeRaw-s', 'heat', 'energy') = 5.069489;
coeff_process_praq('combustion-sludgeRaw-s', 'water', 'mass') = -0.6983025;
coeff_process_praq('combustion-sludgeRaw-s', 'CO2', 'mass') = 0.1179409;
coeff_process_praq('combustion-sludgeRaw-s', 'ash', 'mass') = 0.1984127;
