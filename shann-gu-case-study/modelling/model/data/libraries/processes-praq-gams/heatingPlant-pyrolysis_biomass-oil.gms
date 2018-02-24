* heatingPlant-pyrolysis_biomass-oil
PARAMETER
rate_process_max(P,T);
rate_process_max('heatingPlant-pyrolysis_biomass-oil', 'wint') = 62;
rate_process_max('heatingPlant-pyrolysis_biomass-oil', 'sum') = 62;
rate_process_max('heatingPlant-pyrolysis_biomass-oil', 'shoulder') = 62;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatingPlant-pyrolysis_biomass-oil', 'biomass', 'mass') = -0.2516129;
coeff_process_praq('heatingPlant-pyrolysis_biomass-oil', 'elec', 'energy') = 0.2967742;
coeff_process_praq('heatingPlant-pyrolysis_biomass-oil', 'heat', 'energy') = 1;
coeff_process_praq('heatingPlant-pyrolysis_biomass-oil', 'biooil', 'mass') = 0.0003709677;
coeff_process_praq('heatingPlant-pyrolysis_biomass-oil', 'CO2', 'mass') = 2.693548e-05;
coeff_process_praq('heatingPlant-pyrolysis_biomass-oil', 'slag', 'mass') = 0.06290323;
