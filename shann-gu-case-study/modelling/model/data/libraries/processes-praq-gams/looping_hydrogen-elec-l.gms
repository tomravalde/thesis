* looping_hydrogen-elec-l
PARAMETER
rate_process_max(P,T);
rate_process_max('looping_hydrogen-elec-l', 'wint') = 7.36;
rate_process_max('looping_hydrogen-elec-l', 'sum') = 7.36;
rate_process_max('looping_hydrogen-elec-l', 'shoulder') = 7.36;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('looping_hydrogen-elec-l', 'coal', 'mass') = -0.1429544;
coeff_process_praq('looping_hydrogen-elec-l', 'water', 'mass') = -0.4695772;
coeff_process_praq('looping_hydrogen-elec-l', 'elec', 'energy') = 1;
coeff_process_praq('looping_hydrogen-elec-l', 'hydrogen', 'mass') = 0.00599437;
coeff_process_praq('looping_hydrogen-elec-l', 'CO2', 'mass') = 1.37803e-05;
coeff_process_praq('looping_hydrogen-elec-l', 'ash', 'mass') = 0.01429476;
