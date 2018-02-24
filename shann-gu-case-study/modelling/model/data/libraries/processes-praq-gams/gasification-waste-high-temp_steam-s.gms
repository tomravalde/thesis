* gasification-waste-high-temp_steam-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-waste-high-temp_steam-s', 'wint') = 0.04;
rate_process_max('gasification-waste-high-temp_steam-s', 'sum') = 0.04;
rate_process_max('gasification-waste-high-temp_steam-s', 'shoulder') = 0.04;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-waste-high-temp_steam-s', 'waste', 'mass') = -0.296173;
coeff_process_praq('gasification-waste-high-temp_steam-s', 'heat', 'energy') = -5.357737;
coeff_process_praq('gasification-waste-high-temp_steam-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification-waste-high-temp_steam-s', 'water', 'mass') = -0.9151414;
coeff_process_praq('gasification-waste-high-temp_steam-s', 'CO2', 'mass') = 0.4658902;
