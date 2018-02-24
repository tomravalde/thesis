* heatPump-solarAssisted-heating
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-solarAssisted-heating', 'wint') = 0.01;
rate_process_max('heatPump-solarAssisted-heating', 'sum') = 0.01;
rate_process_max('heatPump-solarAssisted-heating', 'shoulder') = 0.01;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-solarAssisted-heating', 'solar', 'energy') = -0.0006209524;
coeff_process_praq('heatPump-solarAssisted-heating', 'elec', 'energy') = -7.857619e-06;
coeff_process_praq('heatPump-solarAssisted-heating', 'heat', 'energy') = 1;
