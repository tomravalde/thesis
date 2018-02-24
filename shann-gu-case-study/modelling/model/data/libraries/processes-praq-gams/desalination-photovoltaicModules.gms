* desalination-photovoltaicModules
PARAMETER
rate_process_max(P,T);
rate_process_max('desalination-photovoltaicModules', 'wint') = 694.4;
rate_process_max('desalination-photovoltaicModules', 'sum') = 694.4;
rate_process_max('desalination-photovoltaicModules', 'shoulder') = 694.4;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('desalination-photovoltaicModules', 'waterBrackish', 'mass') = -3;
coeff_process_praq('desalination-photovoltaicModules', 'water', 'mass') = 1;
coeff_process_praq('desalination-photovoltaicModules', 'elec', 'energy') = -0.0126;
