* cooling-thermallyActivated_adsorption-activatedCarbon
PARAMETER
rate_process_max(P,T);
rate_process_max('cooling-thermallyActivated_adsorption-activatedCarbon', 'sum') = 0.012;
rate_process_max('cooling-thermallyActivated_adsorption-activatedCarbon', 'shoulder') = 0.012;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('cooling-thermallyActivated_adsorption-activatedCarbon', 'heat', 'energy') = -4;
coeff_process_praq('cooling-thermallyActivated_adsorption-activatedCarbon', 'cool', 'energy') = 1;
