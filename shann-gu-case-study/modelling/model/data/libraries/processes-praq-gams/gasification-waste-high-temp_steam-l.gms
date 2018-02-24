* gasification-waste-high-temp_steam-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-waste-high-temp_steam-l', 'wint') = 12.02;
rate_process_max('gasification-waste-high-temp_steam-l', 'sum') = 12.02;
rate_process_max('gasification-waste-high-temp_steam-l', 'shoulder') = 12.02;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-waste-high-temp_steam-l', 'waste', 'mass') = -0.296173;
coeff_process_praq('gasification-waste-high-temp_steam-l', 'heat', 'energy') = -5.357737;
coeff_process_praq('gasification-waste-high-temp_steam-l', 'elec', 'energy') = 1;
coeff_process_praq('gasification-waste-high-temp_steam-l', 'water', 'mass') = -0.9151414;
coeff_process_praq('gasification-waste-high-temp_steam-l', 'CO2', 'mass') = 0.4658902;
