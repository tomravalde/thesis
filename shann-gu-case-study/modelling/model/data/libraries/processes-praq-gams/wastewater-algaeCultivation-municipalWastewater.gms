* wastewater-algaeCultivation-municipalWastewater
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-algaeCultivation-municipalWastewater', 'wint') = 2.95e-06;
rate_process_max('wastewater-algaeCultivation-municipalWastewater', 'sum') = 2.95e-06;
rate_process_max('wastewater-algaeCultivation-municipalWastewater', 'shoulder') = 2.95e-06;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-algaeCultivation-municipalWastewater', 'wastewater', 'mass') = -60.60606;
coeff_process_praq('wastewater-algaeCultivation-municipalWastewater', 'elec', 'energy') = -36.36364;
coeff_process_praq('wastewater-algaeCultivation-municipalWastewater', 'algae', 'mass') = 1;
coeff_process_praq('wastewater-algaeCultivation-municipalWastewater', 'CO2', 'mass') = -15.15152;
coeff_process_praq('wastewater-algaeCultivation-municipalWastewater', 'water', 'mass') = 30.30303;
