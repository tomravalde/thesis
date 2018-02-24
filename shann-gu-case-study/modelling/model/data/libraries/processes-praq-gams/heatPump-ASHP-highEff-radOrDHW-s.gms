* heatPump-ASHP-highEff-radOrDHW-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-highEff-radOrDHW-s', 'wint') = 0.005;
rate_process_max('heatPump-ASHP-highEff-radOrDHW-s', 'sum') = 0.005;
rate_process_max('heatPump-ASHP-highEff-radOrDHW-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-highEff-radOrDHW-s', 'elec', 'energy') = -0.5;
coeff_process_praq('heatPump-ASHP-highEff-radOrDHW-s', 'heat', 'energy') = 1;
