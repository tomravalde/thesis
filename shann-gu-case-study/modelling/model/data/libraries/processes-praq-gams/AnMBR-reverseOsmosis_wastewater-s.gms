* AnMBR-reverseOsmosis_wastewater-s
PARAMETER
rate_process_max(P,T);
rate_process_max('AnMBR-reverseOsmosis_wastewater-s', 'wint') = 0.0116;
rate_process_max('AnMBR-reverseOsmosis_wastewater-s', 'sum') = 0.0116;
rate_process_max('AnMBR-reverseOsmosis_wastewater-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-s', 'wastewater', 'mass') = -1;
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-s', 'elec', 'energy') = -0.0216;
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-s', 'methane', 'mass') = 4.4e-05;
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-s', 'CO2', 'mass') = 2.26e-05;
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-s', 'water', 'mass') = 1;
