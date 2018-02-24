* wastewater_anaerobicMembraneBioreactor-l
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater_anaerobicMembraneBioreactor-l', 'wint') = 555.56;
rate_process_max('wastewater_anaerobicMembraneBioreactor-l', 'sum') = 555.56;
rate_process_max('wastewater_anaerobicMembraneBioreactor-l', 'shoulder') = 555.56;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater_anaerobicMembraneBioreactor-l', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater_anaerobicMembraneBioreactor-l', 'elec', 'energy') = -0.0002088;
coeff_process_praq('wastewater_anaerobicMembraneBioreactor-l', 'biogas', 'mass') = 4.159e-05;
coeff_process_praq('wastewater_anaerobicMembraneBioreactor-l', 'water', 'mass') = 1;
