* gasification_coal_elec-hydrogen-supplementaryFiring-l
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification_coal_elec-hydrogen-supplementaryFiring-l', 'wint') = 3.8;
rate_process_max('gasification_coal_elec-hydrogen-supplementaryFiring-l', 'sum') = 3.8;
rate_process_max('gasification_coal_elec-hydrogen-supplementaryFiring-l', 'shoulder') = 3.8;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification_coal_elec-hydrogen-supplementaryFiring-l', 'coal', 'mass') = -0.2731281;
coeff_process_praq('gasification_coal_elec-hydrogen-supplementaryFiring-l', 'elec', 'energy') = 1;
coeff_process_praq('gasification_coal_elec-hydrogen-supplementaryFiring-l', 'water', 'mass') = -468.2196;
coeff_process_praq('gasification_coal_elec-hydrogen-supplementaryFiring-l', 'hydrogen', 'mass') = 0.002133;
coeff_process_praq('gasification_coal_elec-hydrogen-supplementaryFiring-l', 'CO2', 'mass') = 0.06763172;
