* waterTreatment
PARAMETER
rate_process_max(P,T);
rate_process_max('waterTreatment', 'wint') = 1157;
rate_process_max('waterTreatment', 'sum') = 1157;
rate_process_max('waterTreatment', 'shoulder') = 1157;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('waterTreatment', 'waterPotable', 'mass') = 1;
coeff_process_praq('waterTreatment', 'water_pure', 'mass') = 0.2;
coeff_process_praq('waterTreatment', 'wastewater', 'mass') = 0.3;
coeff_process_praq('waterTreatment', 'water', 'mass') = -1.5;
coeff_process_praq('waterTreatment', 'elec', 'energy') = -0.05;
