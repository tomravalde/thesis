* coalLooping_hydrogen-elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('coalLooping_hydrogen-elec-s', 'wint') = 300;
rate_process_max('coalLooping_hydrogen-elec-s', 'sum') = 300;
rate_process_max('coalLooping_hydrogen-elec-s', 'shoulder') = 300;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('coalLooping_hydrogen-elec-s', 'coal', 'mass') = -0.09347222;
coeff_process_praq('coalLooping_hydrogen-elec-s', 'water', 'mass') = -0.1393333;
coeff_process_praq('coalLooping_hydrogen-elec-s', 'elec', 'energy') = 1;
coeff_process_praq('coalLooping_hydrogen-elec-s', 'CO2', 'mass') = 0.002316667;
coeff_process_praq('coalLooping_hydrogen-elec-s', 'ash', 'mass') = 0.03966111;
coeff_process_praq('coalLooping_hydrogen-elec-s', 'wastewater', 'mass') = 0.1491694;
coeff_process_praq('coalLooping_hydrogen-elec-s', 'heat', 'energy') = 1.01;
