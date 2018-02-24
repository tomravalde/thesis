* AnMBR-reverseOsmosis_wastewater-l
PARAMETER
rate_process_max(P,T);
rate_process_max('AnMBR-reverseOsmosis_wastewater-l', 'wint') = 555.6;
rate_process_max('AnMBR-reverseOsmosis_wastewater-l', 'sum') = 555.6;
rate_process_max('AnMBR-reverseOsmosis_wastewater-l', 'shoulder') = 555.6;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-l', 'wastewater', 'mass') = -1;
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-l', 'elec', 'energy') = -0.0216;
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-l', 'methane', 'mass') = 4.4e-05;
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-l', 'CO2', 'mass') = 2.26e-05;
coeff_process_praq('AnMBR-reverseOsmosis_wastewater-l', 'water', 'mass') = 1;
