* combustion-sludgeRaw-l
PARAMETER
rate_process_max(P,T);
rate_process_max('combustion-sludgeRaw-l', 'wint') = 0.9474;
rate_process_max('combustion-sludgeRaw-l', 'sum') = 0.9474;
rate_process_max('combustion-sludgeRaw-l', 'shoulder') = 0.9474;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('combustion-sludgeRaw-l', 'sludge', 'mass') = -1.962081;
coeff_process_praq('combustion-sludgeRaw-l', 'gasNatural', 'mass') = -0.04305109;
coeff_process_praq('combustion-sludgeRaw-l', 'elec', 'energy') = 1;
coeff_process_praq('combustion-sludgeRaw-l', 'heat', 'energy') = 5.069489;
coeff_process_praq('combustion-sludgeRaw-l', 'water', 'mass') = -0.6983025;
coeff_process_praq('combustion-sludgeRaw-l', 'CO2', 'mass') = 0.1179409;
coeff_process_praq('combustion-sludgeRaw-l', 'ash', 'mass') = 0.1984127;
