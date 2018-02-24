* anaerobicDigestion_wastewater-l
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobicDigestion_wastewater-l', 'wint') = 555.6;
rate_process_max('anaerobicDigestion_wastewater-l', 'sum') = 555.6;
rate_process_max('anaerobicDigestion_wastewater-l', 'shoulder') = 555.6;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobicDigestion_wastewater-l', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobicDigestion_wastewater-l', 'methane', 'mass') = 3.9e-05;
coeff_process_praq('anaerobicDigestion_wastewater-l', 'elec', 'energy') = -0.0001692;
coeff_process_praq('anaerobicDigestion_wastewater-l', 'CO2', 'mass') = 0.01;
coeff_process_praq('anaerobicDigestion_wastewater-l', 'digestate', 'mass') = 0.01;
