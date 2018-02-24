* anaerobicDigestion_sludge-l
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicDigestion_sludge-l', 'wint') = 1796.361;
rate_process_max('anaerobicDigestion_sludge-l', 'sum') = 1796.361;
rate_process_max('anaerobicDigestion_sludge-l', 'shoulder') = 1796.361;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicDigestion_sludge-l', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobicDigestion_sludge-l', 'water', 'mass') = 0.7905;
coeff_process_praq('anaerobicDigestion_sludge-l', 'digestate', 'mass') = 0.0009663982;
coeff_process_praq('anaerobicDigestion_sludge-l', 'methane', 'mass') = 0.001665283;
coeff_process_praq('anaerobicDigestion_sludge-l', 'CO2', 'mass') = 1.519739e-05;
coeff_process_praq('anaerobicDigestion_sludge-l', 'elec', 'energy') = -0.0008116965;
