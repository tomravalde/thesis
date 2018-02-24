* anaerobicDigestion_sludge_usedOil-l
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicDigestion_sludge_usedOil-l', 'wint') = 1796.361;
rate_process_max('anaerobicDigestion_sludge_usedOil-l', 'sum') = 1796.361;
rate_process_max('anaerobicDigestion_sludge_usedOil-l', 'shoulder') = 1796.361;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicDigestion_sludge_usedOil-l', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-l', 'oilUsed', 'mass') = -0.2345679;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-l', 'water', 'mass') = 0.976395;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-l', 'digestate', 'mass') = 0.001193084;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-l', 'methane', 'mass') = 7.408669e-05;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-l', 'CO2', 'mass') = 3.752443e-05;
coeff_process_praq('anaerobicDigestion_sludge_usedOil-l', 'elec', 'energy') = -0.001002095;
