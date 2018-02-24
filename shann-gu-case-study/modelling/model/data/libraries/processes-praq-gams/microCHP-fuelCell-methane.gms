* microCHP-fuelCell-methane
PARAMETER
rate_process_max(P,T);
rate_process_max('microCHP-fuelCell-methane', 'wint') = 0.001;
rate_process_max('microCHP-fuelCell-methane', 'sum') = 0.001;
rate_process_max('microCHP-fuelCell-methane', 'shoulder') = 0.001;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('microCHP-fuelCell-methane', 'methane', 'mass') = -0.07122544;
coeff_process_praq('microCHP-fuelCell-methane', 'heat', 'energy') = 1.707342;
coeff_process_praq('microCHP-fuelCell-methane', 'elec', 'energy') = 1;
coeff_process_praq('microCHP-fuelCell-methane', 'CO2', 'mass') = 0.2024302;
