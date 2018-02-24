* elecplant-cofiring-biomass-coal-fluidisedBed-l
PARAMETER
rate_process_max(P,T);
rate_process_max('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'wint') = 1100;
rate_process_max('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'sum') = 1100;
rate_process_max('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'shoulder') = 1100;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'coal', 'mass') = -0.88;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'biomass', 'mass') = -0.032;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'elec', 'energy') = 1;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'heat', 'energy') = 1.666667;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'water', 'mass') = -0.8666667;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'CO2', 'mass') = 0.2096667;
coeff_process_praq('elecplant-cofiring-biomass-coal-fluidisedBed-l', 'ash', 'mass') = 0.01210667;
