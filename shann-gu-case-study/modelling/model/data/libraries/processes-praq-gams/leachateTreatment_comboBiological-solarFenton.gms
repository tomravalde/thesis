* leachateTreatment_comboBiological-solarFenton
PARAMETER
rate_process_max(P,T);
rate_process_max('leachateTreatment_comboBiological-solarFenton', 'wint') = 9.26;
rate_process_max('leachateTreatment_comboBiological-solarFenton', 'sum') = 9.26;
rate_process_max('leachateTreatment_comboBiological-solarFenton', 'shoulder') = 9.26;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('leachateTreatment_comboBiological-solarFenton', 'leachate', 'mass') = -1;
coeff_process_praq('leachateTreatment_comboBiological-solarFenton', 'elec', 'energy') = 0.036;
coeff_process_praq('leachateTreatment_comboBiological-solarFenton', 'methanol', 'mass') = -0.003;
coeff_process_praq('leachateTreatment_comboBiological-solarFenton', 'sludge', 'mass') = 0.00135;
coeff_process_praq('leachateTreatment_comboBiological-solarFenton', 'water', 'mass') = 1;
