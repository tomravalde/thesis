* microalgae-biofuels_wetExtraction-s
PARAMETER
rate_process_max(P,T);
rate_process_max('microalgae-biofuels_wetExtraction-s', 'wint') = 0.0012;
rate_process_max('microalgae-biofuels_wetExtraction-s', 'sum') = 0.0012;
rate_process_max('microalgae-biofuels_wetExtraction-s', 'shoulder') = 0.0012;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('microalgae-biofuels_wetExtraction-s', 'algae', 'mass') = -5.042966;
coeff_process_praq('microalgae-biofuels_wetExtraction-s', 'elec', 'energy') = -1.803102;
coeff_process_praq('microalgae-biofuels_wetExtraction-s', 'heat', 'energy') = -17.1713;
coeff_process_praq('microalgae-biofuels_wetExtraction-s', 'biodiesel', 'mass') = 1;
coeff_process_praq('microalgae-biofuels_wetExtraction-s', 'CO2', 'mass') = 0.0141203;
coeff_process_praq('microalgae-biofuels_wetExtraction-s', 'methane', 'mass') = 0.02783717;
