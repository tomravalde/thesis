* wastewater-algaeCultivation-openPond-l
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-algaeCultivation-openPond-l', 'wint') = 0.00405;
rate_process_max('wastewater-algaeCultivation-openPond-l', 'sum') = 0.00405;
rate_process_max('wastewater-algaeCultivation-openPond-l', 'shoulder') = 0.00405;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-algaeCultivation-openPond-l', 'elec', 'energy') = -45.45455;
coeff_process_praq('wastewater-algaeCultivation-openPond-l', 'algae', 'mass') = 1;
coeff_process_praq('wastewater-algaeCultivation-openPond-l', 'CO2', 'mass') = 0.03030303;
coeff_process_praq('wastewater-algaeCultivation-openPond-l', 'water', 'mass') = -378.7879;
