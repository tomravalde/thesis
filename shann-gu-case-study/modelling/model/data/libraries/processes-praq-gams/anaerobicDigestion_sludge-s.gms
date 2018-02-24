* anaerobicDigestion_sludge-s
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicDigestion_sludge-s', 'wint') = 0.0116;
rate_process_max('anaerobicDigestion_sludge-s', 'sum') = 0.0116;
rate_process_max('anaerobicDigestion_sludge-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicDigestion_sludge-s', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobicDigestion_sludge-s', 'water', 'mass') = 0.7905;
coeff_process_praq('anaerobicDigestion_sludge-s', 'digestate', 'mass') = 0.0009663982;
coeff_process_praq('anaerobicDigestion_sludge-s', 'methane', 'mass') = 0.001665283;
coeff_process_praq('anaerobicDigestion_sludge-s', 'CO2', 'mass') = 1.519739e-05;
coeff_process_praq('anaerobicDigestion_sludge-s', 'elec', 'energy') = -0.0008116965;
