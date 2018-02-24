* cofiring-biomass-coal-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cofiring-biomass-coal-s', 'wint') = 1131;
rate_process_max('cofiring-biomass-coal-s', 'sum') = 1131;
rate_process_max('cofiring-biomass-coal-s', 'shoulder') = 1131;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cofiring-biomass-coal-s', 'coal', 'mass') = -0.07714286;
coeff_process_praq('cofiring-biomass-coal-s', 'biomass', 'mass') = -0.06857143;
coeff_process_praq('cofiring-biomass-coal-s', 'elec', 'energy') = 1;
coeff_process_praq('cofiring-biomass-coal-s', 'heat', 'energy') = 1.857143;
coeff_process_praq('cofiring-biomass-coal-s', 'water', 'mass') = -0.8571429;
coeff_process_praq('cofiring-biomass-coal-s', 'CO2', 'mass') = 0.185;
coeff_process_praq('cofiring-biomass-coal-s', 'ash', 'mass') = 0.015;
