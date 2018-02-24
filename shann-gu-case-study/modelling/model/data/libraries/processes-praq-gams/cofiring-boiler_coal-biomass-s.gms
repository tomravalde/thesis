* cofiring-boiler_coal-biomass-s
PARAMETER
rate_process_max(P,T);
rate_process_max('cofiring-boiler_coal-biomass-s', 'wint') = 10;
rate_process_max('cofiring-boiler_coal-biomass-s', 'sum') = 10;
rate_process_max('cofiring-boiler_coal-biomass-s', 'shoulder') = 10;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cofiring-boiler_coal-biomass-s', 'coal', 'mass') = -0.08640035;
coeff_process_praq('cofiring-boiler_coal-biomass-s', 'biomass', 'mass') = -0.01006873;
coeff_process_praq('cofiring-boiler_coal-biomass-s', 'heat', 'energy') = 1.162791;
coeff_process_praq('cofiring-boiler_coal-biomass-s', 'elec', 'energy') = 1;
coeff_process_praq('cofiring-boiler_coal-biomass-s', 'water', 'mass') = -0.8672778;
coeff_process_praq('cofiring-boiler_coal-biomass-s', 'CO2', 'mass') = 0.09249366;
coeff_process_praq('cofiring-boiler_coal-biomass-s', 'ash', 'mass') = 0.09647067;
