* gasification-waste-high-temp-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification-waste-high-temp-s', 'wint') = 0.04;
rate_process_max('gasification-waste-high-temp-s', 'sum') = 0.04;
rate_process_max('gasification-waste-high-temp-s', 'shoulder') = 0.04;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification-waste-high-temp-s', 'waste', 'mass') = -0.4141531;
coeff_process_praq('gasification-waste-high-temp-s', 'heat', 'energy') = -7.470998;
coeff_process_praq('gasification-waste-high-temp-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification-waste-high-temp-s', 'water', 'mass') = -5.916473;
coeff_process_praq('gasification-waste-high-temp-s', 'CO2', 'mass') = 0.649652;
