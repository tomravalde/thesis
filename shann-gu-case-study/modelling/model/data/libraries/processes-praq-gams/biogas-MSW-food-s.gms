* biogas-MSW-food-s
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-MSW-food-s', 'wint') = 0.254;
rate_process_max('biogas-MSW-food-s', 'sum') = 0.254;
rate_process_max('biogas-MSW-food-s', 'shoulder') = 0.254;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-MSW-food-s', 'foodWaste', 'mass') = -6.923098;
coeff_process_praq('biogas-MSW-food-s', 'methane', 'mass') = 1.453851;
coeff_process_praq('biogas-MSW-food-s', 'heat', 'energy') = -1.993852;
coeff_process_praq('biogas-MSW-food-s', 'elec', 'energy') = -1;
coeff_process_praq('biogas-MSW-food-s', 'CO2', 'mass') = 2.250007;
coeff_process_praq('biogas-MSW-food-s', 'digestate', 'mass') = 2.076929;
