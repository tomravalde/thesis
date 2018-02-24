* looping_hydrogen-elec-s
PARAMETER
rate_process_max(P,T);
rate_process_max('looping_hydrogen-elec-s', 'wint') = 3.78;
rate_process_max('looping_hydrogen-elec-s', 'sum') = 3.78;
rate_process_max('looping_hydrogen-elec-s', 'shoulder') = 3.78;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('looping_hydrogen-elec-s', 'coal', 'mass') = -0.2707533;
coeff_process_praq('looping_hydrogen-elec-s', 'elec', 'energy') = 1;
coeff_process_praq('looping_hydrogen-elec-s', 'water', 'mass') = -0.4697334;
coeff_process_praq('looping_hydrogen-elec-s', 'hydrogen', 'mass') = 0.01676623;
coeff_process_praq('looping_hydrogen-elec-s', 'ash', 'mass') = 0.02782137;
