* leachateTreatment-electrodyalysis
PARAMETER
rate_process_max(P,T);
rate_process_max('leachateTreatment-electrodyalysis', 'wint') = 13.89;
rate_process_max('leachateTreatment-electrodyalysis', 'sum') = 13.89;
rate_process_max('leachateTreatment-electrodyalysis', 'shoulder') = 13.89;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('leachateTreatment-electrodyalysis', 'leachate', 'mass') = -1;
coeff_process_praq('leachateTreatment-electrodyalysis', 'elec', 'energy') = 0.162;
coeff_process_praq('leachateTreatment-electrodyalysis', 'water', 'mass') = 1;
