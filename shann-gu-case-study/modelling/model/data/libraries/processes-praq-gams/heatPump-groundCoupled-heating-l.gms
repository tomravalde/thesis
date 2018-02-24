* heatPump-groundCoupled-heating-l
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-groundCoupled-heating-l', 'wint') = 13;
rate_process_max('heatPump-groundCoupled-heating-l', 'sum') = 13;
rate_process_max('heatPump-groundCoupled-heating-l', 'shoulder') = 13;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-groundCoupled-heating-l', 'elec', 'energy') = -0.2439024;
coeff_process_praq('heatPump-groundCoupled-heating-l', 'heat', 'energy') = 1;
