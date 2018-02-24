* anaerobicDigestion_sludge_manure-l
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicDigestion_sludge_manure-l', 'wint') = 1796.361;
rate_process_max('anaerobicDigestion_sludge_manure-l', 'sum') = 1796.361;
rate_process_max('anaerobicDigestion_sludge_manure-l', 'shoulder') = 1796.361;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicDigestion_sludge_manure-l', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobicDigestion_sludge_manure-l', 'manure', 'mass') = -0.4285714;
coeff_process_praq('anaerobicDigestion_sludge_manure-l', 'water', 'mass') = 1.129;
coeff_process_praq('anaerobicDigestion_sludge_manure-l', 'digestate', 'mass') = 0.001380569;
coeff_process_praq('anaerobicDigestion_sludge_manure-l', 'methane', 'mass') = 6.429109e-05;
coeff_process_praq('anaerobicDigestion_sludge_manure-l', 'CO2', 'mass') = 3.284418e-05;
coeff_process_praq('anaerobicDigestion_sludge_manure-l', 'elec', 'energy') = -0.001159566;
