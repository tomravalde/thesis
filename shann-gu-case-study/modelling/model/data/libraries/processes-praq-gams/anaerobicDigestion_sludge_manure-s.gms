* anaerobicDigestion_sludge_manure-s
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicDigestion_sludge_manure-s', 'wint') = 0.0116;
rate_process_max('anaerobicDigestion_sludge_manure-s', 'sum') = 0.0116;
rate_process_max('anaerobicDigestion_sludge_manure-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicDigestion_sludge_manure-s', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobicDigestion_sludge_manure-s', 'manure', 'mass') = -0.4285714;
coeff_process_praq('anaerobicDigestion_sludge_manure-s', 'water', 'mass') = 1.129;
coeff_process_praq('anaerobicDigestion_sludge_manure-s', 'digestate', 'mass') = 0.001380569;
coeff_process_praq('anaerobicDigestion_sludge_manure-s', 'methane', 'mass') = 6.429109e-05;
coeff_process_praq('anaerobicDigestion_sludge_manure-s', 'CO2', 'mass') = 3.284418e-05;
coeff_process_praq('anaerobicDigestion_sludge_manure-s', 'elec', 'energy') = -0.001159566;
