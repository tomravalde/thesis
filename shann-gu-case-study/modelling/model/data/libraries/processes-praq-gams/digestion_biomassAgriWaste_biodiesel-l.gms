* digestion_biomassAgriWaste_biodiesel-l
PARAMETER
rate_process_max(P,T);
rate_process_max('digestion_biomassAgriWaste_biodiesel-l', 'wint') = 0.634;
rate_process_max('digestion_biomassAgriWaste_biodiesel-l', 'sum') = 0.634;
rate_process_max('digestion_biomassAgriWaste_biodiesel-l', 'shoulder') = 0.634;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('digestion_biomassAgriWaste_biodiesel-l', 'biomassAgriWaste', 'mass') = -25.78306;
coeff_process_praq('digestion_biomassAgriWaste_biodiesel-l', 'biodiesel', 'mass') = 1;
coeff_process_praq('digestion_biomassAgriWaste_biodiesel-l', 'elec', 'energy') = 10.07723;
coeff_process_praq('digestion_biomassAgriWaste_biodiesel-l', 'heat', 'energy') = 13.26684;
