* SAF-MBR_wastewater-l
PARAMETER
rate_process_max(P,T);
rate_process_max('SAF-MBR_wastewater-l', 'wint') = 63083.33;
rate_process_max('SAF-MBR_wastewater-l', 'sum') = 63083.33;
rate_process_max('SAF-MBR_wastewater-l', 'shoulder') = 63083.33;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('SAF-MBR_wastewater-l', 'wastewater', 'mass') = -1;
coeff_process_praq('SAF-MBR_wastewater-l', 'elec', 'energy') = -0.0001692;
coeff_process_praq('SAF-MBR_wastewater-l', 'methane', 'mass') = 1.59e-05;
coeff_process_praq('SAF-MBR_wastewater-l', 'water', 'mass') = 1;
