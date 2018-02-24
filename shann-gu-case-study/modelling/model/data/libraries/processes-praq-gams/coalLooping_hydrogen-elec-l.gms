* coalLooping_hydrogen-elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('coalLooping_hydrogen-elec-l', 'wint') = 450;
rate_process_max('coalLooping_hydrogen-elec-l', 'sum') = 450;
rate_process_max('coalLooping_hydrogen-elec-l', 'shoulder') = 450;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('coalLooping_hydrogen-elec-l', 'coal', 'mass') = -0.09347222;
coeff_process_praq('coalLooping_hydrogen-elec-l', 'water', 'mass') = -0.1393333;
coeff_process_praq('coalLooping_hydrogen-elec-l', 'elec', 'energy') = 1;
coeff_process_praq('coalLooping_hydrogen-elec-l', 'CO2', 'mass') = 0.002316667;
coeff_process_praq('coalLooping_hydrogen-elec-l', 'ash', 'mass') = 0.03966111;
coeff_process_praq('coalLooping_hydrogen-elec-l', 'wastewater', 'mass') = 0.1491694;
coeff_process_praq('coalLooping_hydrogen-elec-l', 'heat', 'energy') = 1.01;
