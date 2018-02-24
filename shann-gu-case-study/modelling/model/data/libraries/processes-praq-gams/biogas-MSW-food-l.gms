* biogas-MSW-food-l
PARAMETER
rate_process_max(P,T);
rate_process_max('biogas-MSW-food-l', 'wint') = 4.439;
rate_process_max('biogas-MSW-food-l', 'sum') = 4.439;
rate_process_max('biogas-MSW-food-l', 'shoulder') = 4.439;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('biogas-MSW-food-l', 'foodWaste', 'mass') = -6.923098;
coeff_process_praq('biogas-MSW-food-l', 'methane', 'mass') = 1.453851;
coeff_process_praq('biogas-MSW-food-l', 'heat', 'energy') = -1.993852;
coeff_process_praq('biogas-MSW-food-l', 'elec', 'energy') = -1;
coeff_process_praq('biogas-MSW-food-l', 'CO2', 'mass') = 2.250007;
coeff_process_praq('biogas-MSW-food-l', 'digestate', 'mass') = 2.076929;
