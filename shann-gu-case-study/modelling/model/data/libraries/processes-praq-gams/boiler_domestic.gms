* boiler_domestic
PARAMETER
rate_process_max(P,T);
rate_process_max('boiler_domestic', 'wint') = 0.025;
rate_process_max('boiler_domestic', 'sum') = 0.025;
rate_process_max('boiler_domestic', 'shoulder') = 0.025;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('boiler_domestic', 'gasNatural', 'mass') = -2.631;
coeff_process_praq('boiler_domestic', 'heat', 'energy') = 1;
coeff_process_praq('boiler_domestic', 'CO2', 'mass') = 7.4;
