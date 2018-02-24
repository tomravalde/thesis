* SAF-MBR_wastewater-s
PARAMETER
rate_process_max(P,T);
rate_process_max('SAF-MBR_wastewater-s', 'wint') = 0.00657;
rate_process_max('SAF-MBR_wastewater-s', 'sum') = 0.00657;
rate_process_max('SAF-MBR_wastewater-s', 'shoulder') = 0.00657;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('SAF-MBR_wastewater-s', 'wastewater', 'mass') = -1;
coeff_process_praq('SAF-MBR_wastewater-s', 'elec', 'energy') = -0.0001692;
coeff_process_praq('SAF-MBR_wastewater-s', 'methane', 'mass') = 1.59e-05;
coeff_process_praq('SAF-MBR_wastewater-s', 'water', 'mass') = 1;
