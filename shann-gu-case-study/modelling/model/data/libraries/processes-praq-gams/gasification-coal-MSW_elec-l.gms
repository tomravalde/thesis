* gasification-coal-MSW_elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-coal-MSW_elec-l', 'wint') = 500;
rate_process_max('gasification-coal-MSW_elec-l', 'sum') = 500;
rate_process_max('gasification-coal-MSW_elec-l', 'shoulder') = 500;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-coal-MSW_elec-l', 'coal', 'mass') = -0.09868819;
coeff_process_praq('gasification-coal-MSW_elec-l', 'MSW', 'mass') = -0.02467205;
coeff_process_praq('gasification-coal-MSW_elec-l', 'elec', 'energy') = 1;
coeff_process_praq('gasification-coal-MSW_elec-l', 'water', 'mass') = -0.4692166;
coeff_process_praq('gasification-coal-MSW_elec-l', 'CO2', 'mass') = 0.019775;
