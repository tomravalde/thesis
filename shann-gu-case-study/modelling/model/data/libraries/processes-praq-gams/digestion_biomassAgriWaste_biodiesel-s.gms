* digestion_biomassAgriWaste_biodiesel-s
PARAMETER
rate_process_max(P,T);
rate_process_max('digestion_biomassAgriWaste_biodiesel-s', 'wint') = 0.317;
rate_process_max('digestion_biomassAgriWaste_biodiesel-s', 'sum') = 0.317;
rate_process_max('digestion_biomassAgriWaste_biodiesel-s', 'shoulder') = 0.317;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('digestion_biomassAgriWaste_biodiesel-s', 'biomassAgriWaste', 'mass') = -25.78306;
coeff_process_praq('digestion_biomassAgriWaste_biodiesel-s', 'biodiesel', 'mass') = 1;
coeff_process_praq('digestion_biomassAgriWaste_biodiesel-s', 'elec', 'energy') = 10.07723;
coeff_process_praq('digestion_biomassAgriWaste_biodiesel-s', 'heat', 'energy') = 13.26684;
