* boiler_gas
PARAMETER
rate_process_max(P,T);
rate_process_max('boiler_gas', 'wint') = 560;
rate_process_max('boiler_gas', 'sum') = 560;
rate_process_max('boiler_gas', 'shoulder') = 560;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('boiler_gas', 'gasNatural', 'mass') = -0.047;
coeff_process_praq('boiler_gas', 'heat', 'energy') = 1;
coeff_process_praq('boiler_gas', 'CO2', 'mass') = 0.133;
