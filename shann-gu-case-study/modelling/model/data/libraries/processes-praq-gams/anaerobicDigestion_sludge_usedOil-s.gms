* anaerobicDigestion_sludge_usedOil-s
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicDigestion_sludge_usedOil-s', 'wint') = 0.0116;
rate_process_max('anaerobicDigestion_sludge_usedOil-s', 'sum') = 0.0116;
rate_process_max('anaerobicDigestion_sludge_usedOil-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicDigestion_sludge_usedOil-s', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-s', 'oilUsed', 'mass') = -0.2345679;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-s', 'water', 'mass') = 0.972;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-s', 'digestate', 'mass') = 0.001193084;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-s', 'methane', 'mass') = 7.408669e-05;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-s', 'CO2', 'mass') = 3.752443e-05;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-s', 'elec', 'energy') = -0.001002095;
