* cofiring-boiler_coal-biomass-l
PARAMETER
rate_process_max(P,T);
rate_process_max('cofiring-boiler_coal-biomass-l', 'wint') = 350;
rate_process_max('cofiring-boiler_coal-biomass-l', 'sum') = 350;
rate_process_max('cofiring-boiler_coal-biomass-l', 'shoulder') = 350;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cofiring-boiler_coal-biomass-l', 'coal', 'mass') = -0.08640035;
coeff_process_praq('cofiring-boiler_coal-biomass-l', 'biomass', 'mass') = -0.01006873;
coeff_process_praq('cofiring-boiler_coal-biomass-l', 'heat', 'energy') = 1.162791;
coeff_process_praq('cofiring-boiler_coal-biomass-l', 'elec', 'energy') = 1;
coeff_process_praq('cofiring-boiler_coal-biomass-l', 'water', 'mass') = -0.8672778;
coeff_process_praq('cofiring-boiler_coal-biomass-l', 'CO2', 'mass') = 0.09249366;
coeff_process_praq('cofiring-boiler_coal-biomass-l', 'ash', 'mass') = 0.09647067;
