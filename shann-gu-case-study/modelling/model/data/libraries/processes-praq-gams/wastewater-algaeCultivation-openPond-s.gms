* wastewater-algaeCultivation-openPond-s
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-algaeCultivation-openPond-s', 'wint') = 4.05e-09;
rate_process_max('wastewater-algaeCultivation-openPond-s', 'sum') = 4.05e-09;
rate_process_max('wastewater-algaeCultivation-openPond-s', 'shoulder') = 4.05e-09;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-algaeCultivation-openPond-s', 'elec', 'energy') = -45.45455;
coeff_process_praq('wastewater-algaeCultivation-openPond-s', 'algae', 'mass') = 1;
coeff_process_praq('wastewater-algaeCultivation-openPond-s', 'CO2', 'mass') = 0.03030303;
coeff_process_praq('wastewater-algaeCultivation-openPond-s', 'water', 'mass') = -378.7879;
