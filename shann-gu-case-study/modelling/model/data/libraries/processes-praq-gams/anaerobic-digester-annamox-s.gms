* anaerobic-digester-annamox-s
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobic-digester-annamox-s', 'wint') = 0.0116;
rate_process_max('anaerobic-digester-annamox-s', 'sum') = 0.0116;
rate_process_max('anaerobic-digester-annamox-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobic-digester-annamox-s', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobic-digester-annamox-s', 'heat', 'energy') = -0.2961026;
coeff_process_praq('anaerobic-digester-annamox-s', 'elec', 'energy') = -0.1543716;
coeff_process_praq('anaerobic-digester-annamox-s', 'methane', 'mass') = 0.09341281;
coeff_process_praq('anaerobic-digester-annamox-s', 'CO2', 'mass') = 0.08321619;
coeff_process_praq('anaerobic-digester-annamox-s', 'digestate', 'mass') = 0.7314249;
