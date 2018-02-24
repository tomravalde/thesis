* heatPump-groundCoupled-heating-s
PARAMETER
rate_process_max(P,T);
rate_process_max('heatPump-groundCoupled-heating-s', 'wint') = 0.005;
rate_process_max('heatPump-groundCoupled-heating-s', 'sum') = 0.005;
rate_process_max('heatPump-groundCoupled-heating-s', 'shoulder') = 0.005;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('heatPump-groundCoupled-heating-s', 'elec', 'energy') = -0.2439024;
coeff_process_praq('heatPump-groundCoupled-heating-s', 'heat', 'energy') = 1;
