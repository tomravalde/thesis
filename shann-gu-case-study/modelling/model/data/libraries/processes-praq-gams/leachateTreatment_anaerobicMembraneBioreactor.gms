* leachateTreatment_anaerobicMembraneBioreactor
PARAMETER
rate_process_max(P,T);
rate_process_max('leachateTreatment_anaerobicMembraneBioreactor', 'wint') = 9.26;
rate_process_max('leachateTreatment_anaerobicMembraneBioreactor', 'sum') = 9.26;
rate_process_max('leachateTreatment_anaerobicMembraneBioreactor', 'shoulder') = 9.26;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('leachateTreatment_anaerobicMembraneBioreactor', 'leachate', 'mass') = -1;
coeff_process_praq('leachateTreatment_anaerobicMembraneBioreactor', 'elec', 'energy') = -0.0001692;
coeff_process_praq('leachateTreatment_anaerobicMembraneBioreactor', 'methane', 'mass') = 0.000468;
coeff_process_praq('leachateTreatment_anaerobicMembraneBioreactor', 'CO2', 'mass') = 0.00071;
coeff_process_praq('leachateTreatment_anaerobicMembraneBioreactor', 'water', 'mass') = 1;
