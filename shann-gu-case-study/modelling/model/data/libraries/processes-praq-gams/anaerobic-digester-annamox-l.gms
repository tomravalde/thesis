* anaerobic-digester-annamox-l
PARAMETER
rate_process_max(P,T);
rate_process_max('anaerobic-digester-annamox-l', 'wint') = 0.149;
rate_process_max('anaerobic-digester-annamox-l', 'sum') = 0.149;
rate_process_max('anaerobic-digester-annamox-l', 'shoulder') = 0.149;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('anaerobic-digester-annamox-l', 'wastewater', 'mass') = -1;
coeff_process_praq('anaerobic-digester-annamox-l', 'heat', 'energy') = -0.2961026;
coeff_process_praq('anaerobic-digester-annamox-l', 'elec', 'energy') = -0.1543716;
coeff_process_praq('anaerobic-digester-annamox-l', 'methane', 'mass') = 0.09341281;
coeff_process_praq('anaerobic-digester-annamox-l', 'CO2', 'mass') = 0.08321619;
coeff_process_praq('anaerobic-digester-annamox-l', 'digestate', 'mass') = 0.7314249;
