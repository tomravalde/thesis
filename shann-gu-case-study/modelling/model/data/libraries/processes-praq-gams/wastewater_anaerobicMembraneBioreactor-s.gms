* wastewater_anaerobicMembraneBioreactor-s
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater_anaerobicMembraneBioreactor-s', 'wint') = 0.0116;
rate_process_max('wastewater_anaerobicMembraneBioreactor-s', 'sum') = 0.0116;
rate_process_max('wastewater_anaerobicMembraneBioreactor-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater_anaerobicMembraneBioreactor-s', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater_anaerobicMembraneBioreactor-s', 'elec', 'energy') = -0.0002088;
coeff_process_praq('wastewater_anaerobicMembraneBioreactor-s', 'biogas', 'mass') = 4.159e-05;
coeff_process_praq('wastewater_anaerobicMembraneBioreactor-s', 'water', 'mass') = 1;
