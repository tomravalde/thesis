* gasification_coal_elec-hydrogen-noSupplementaryFiring-s
PARAMETER
rate_process_max(P,T);
rate_process_max('gasification_coal_elec-hydrogen-noSupplementaryFiring-s', 'wint') = 2.7;
rate_process_max('gasification_coal_elec-hydrogen-noSupplementaryFiring-s', 'sum') = 2.7;
rate_process_max('gasification_coal_elec-hydrogen-noSupplementaryFiring-s', 'shoulder') = 2.7;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('gasification_coal_elec-hydrogen-noSupplementaryFiring-s', 'coal', 'mass') = -0.003865424;
coeff_process_praq('gasification_coal_elec-hydrogen-noSupplementaryFiring-s', 'elec', 'energy') = 1;
coeff_process_praq('gasification_coal_elec-hydrogen-noSupplementaryFiring-s', 'water', 'mass') = -0.4712136;
coeff_process_praq('gasification_coal_elec-hydrogen-noSupplementaryFiring-s', 'hydrogen', 'mass') = 3.386848e-05;
