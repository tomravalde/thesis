* wastewater-algaeCultivation-manurePhotobioreactor
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-algaeCultivation-manurePhotobioreactor', 'wint') = 2.95e-06;
rate_process_max('wastewater-algaeCultivation-manurePhotobioreactor', 'sum') = 2.95e-06;
rate_process_max('wastewater-algaeCultivation-manurePhotobioreactor', 'shoulder') = 2.95e-06;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-algaeCultivation-manurePhotobioreactor', 'manure', 'mass') = -242.4242;
coeff_process_praq('wastewater-algaeCultivation-manurePhotobioreactor', 'elec', 'energy') = -27.27273;
coeff_process_praq('wastewater-algaeCultivation-manurePhotobioreactor', 'algae', 'mass') = 1;
coeff_process_praq('wastewater-algaeCultivation-manurePhotobioreactor', 'CO2', 'mass') = -15.15152;
coeff_process_praq('wastewater-algaeCultivation-manurePhotobioreactor', 'wastewater', 'mass') = -121.2121;
