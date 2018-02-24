* elecplant-cofiring-biomass-coal-fluidisedBed-s
PARAMETER
rate_process_max(P,T);
rate_process_max('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'wint') = 10;
rate_process_max('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'sum') = 10;
rate_process_max('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'shoulder') = 10;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'coal', 'mass') = -0.88;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'biomass', 'mass') = -0.032;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'elec', 'energy') = 1;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'heat', 'energy') = 1.666667;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'water', 'mass') = -0.8666667;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'CO2', 'mass') = 0.2096667;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-s', 'ash', 'mass') = 0.01210667;
