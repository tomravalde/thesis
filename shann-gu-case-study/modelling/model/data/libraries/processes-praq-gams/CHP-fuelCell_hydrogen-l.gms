* CHP-fuelCell_hydrogen-l
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-fuelCell_hydrogen-l', 'wint') = 2;
rate_process_max('CHP-fuelCell_hydrogen-l', 'sum') = 2;
rate_process_max('CHP-fuelCell_hydrogen-l', 'shoulder') = 2;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-fuelCell_hydrogen-l', 'hydrogen', 'mass') = -0.01505376;
coeff_process_praq('CHP-fuelCell_hydrogen-l', 'elec', 'energy') = 1;
coeff_process_praq('CHP-fuelCell_hydrogen-l', 'heat', 'energy') = 0.4623656;
coeff_process_praq('CHP-fuelCell_hydrogen-l', 'waterNonPotable', 'mass') = 0.2987097;
