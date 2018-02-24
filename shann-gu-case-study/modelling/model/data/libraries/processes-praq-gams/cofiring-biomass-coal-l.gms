* cofiring-biomass-coal-l
PARAMETER
rate_process_max(P,T);
rate_process_max('cofiring-biomass-coal-l', 'wint') = 1600;
rate_process_max('cofiring-biomass-coal-l', 'sum') = 1600;
rate_process_max('cofiring-biomass-coal-l', 'shoulder') = 1600;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cofiring-biomass-coal-l', 'coal', 'mass') = -0.07714286;
coeff_process_praq('cofiring-biomass-coal-l', 'biomass', 'mass') = -0.06857143;
coeff_process_praq('cofiring-biomass-coal-l', 'elec', 'energy') = 1;
coeff_process_praq('cofiring-biomass-coal-l', 'heat', 'energy') = 1.857143;
coeff_process_praq('cofiring-biomass-coal-l', 'water', 'mass') = -0.8571429;
coeff_process_praq('cofiring-biomass-coal-l', 'CO2', 'mass') = 0.185;
coeff_process_praq('cofiring-biomass-coal-l', 'ash', 'mass') = 0.015;
