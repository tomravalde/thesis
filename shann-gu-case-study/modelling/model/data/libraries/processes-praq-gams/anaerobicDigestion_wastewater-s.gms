* anaerobicDigestion_wastewater-s
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicDigestion_wastewater-s', 'wint') = 0.0116;
rate_process_max('anaerobicDigestion_wastewater-s', 'sum') = 0.0116;
rate_process_max('anaerobicDigestion_wastewater-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicDigestion_wastewater-s', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobicDigestion_wastewater-s', 'methane', 'mass') = 3.9e-05;
coeff_process_praq('anaerobicDigestion_wastewater-s', 'elec', 'energy') = -0.0001692;
coeff_process_praq('anaerobicDigestion_wastewater-s', 'CO2', 'mass') = 0.01;
coeff_process_praq('anaerobicDigestion_wastewater-s', 'digestate', 'mass') = 0.01;
