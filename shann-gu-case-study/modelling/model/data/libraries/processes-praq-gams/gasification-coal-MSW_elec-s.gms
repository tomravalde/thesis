* gasification-coal-MSW_elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal-MSW_elec-s', 'wint') = 400;
rate_process_max('gasification-coal-MSW_elec-s', 'sum') = 400;
rate_process_max('gasification-coal-MSW_elec-s', 'shoulder') = 400;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal-MSW_elec-s', 'coal', 'mass') = -0.09868819;
coeff_process_praq('gasification-coal-MSW_elec-s', 'MSW', 'mass') = -0.02467205;
coeff_process_praq('gasification-coal-MSW_elec-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal-MSW_elec-s', 'water', 'mass') = -0.4692166;
coeff_process_praq('gasification-coal-MSW_elec-s', 'CO2', 'mass') = 0.019775;
