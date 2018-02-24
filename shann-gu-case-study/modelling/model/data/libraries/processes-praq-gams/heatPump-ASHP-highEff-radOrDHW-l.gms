* heatPump-ASHP-highEff-radOrDHW-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-ASHP-highEff-radOrDHW-l', 'wint') = 13;
rate_process_max('heatPump-ASHP-highEff-radOrDHW-l', 'sum') = 13;
rate_process_max('heatPump-ASHP-highEff-radOrDHW-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-ASHP-highEff-radOrDHW-l', 'elec', 'energy') = -0.5;
coeff_process_praq('heatPump-ASHP-highEff-radOrDHW-l', 'heat', 'energy') = 1;
