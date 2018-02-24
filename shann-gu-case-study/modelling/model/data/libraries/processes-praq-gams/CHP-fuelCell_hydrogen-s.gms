* CHP-fuelCell_hydrogen-s
PARAMETER
rate_process_max(P,T);
rate_process_max('CHP-fuelCell_hydrogen-s', 'wint') = 0.005;
rate_process_max('CHP-fuelCell_hydrogen-s', 'sum') = 0.005;
rate_process_max('CHP-fuelCell_hydrogen-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('CHP-fuelCell_hydrogen-s', 'hydrogen', 'mass') = -0.01505376;
coeff_process_praq('CHP-fuelCell_hydrogen-s', 'elec', 'energy') = 1;
coeff_process_praq('CHP-fuelCell_hydrogen-s', 'heat', 'energy') = 0.4623656;
coeff_process_praq('CHP-fuelCell_hydrogen-s', 'waterNonPotable', 'mass') = 0.2987097;
