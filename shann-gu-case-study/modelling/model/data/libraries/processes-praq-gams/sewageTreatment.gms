* sewageTreatment
PARAMETER
rate_process_max(P,T);
rate_process_max('sewageTreatment', 'wint') = 1157;
rate_process_max('sewageTreatment', 'sum') = 1157;
rate_process_max('sewageTreatment', 'shoulder') = 1157;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('sewageTreatment', 'waterNonPotable', 'mass') = 0.7;
coeff_process_praq('sewageTreatment', 'sludge', 'mass') = 0.3;
coeff_process_praq('sewageTreatment', 'wastewater', 'mass') = -1;
coeff_process_praq('sewageTreatment', 'elec', 'energy') = -0.05;
