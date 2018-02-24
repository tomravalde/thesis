* microalgae-biofuels_wetExtraction-l
PARAMETER
rate_process_max(P,T);
rate_process_max('microalgae-biofuels_wetExtraction-l', 'wint') = 21;
rate_process_max('microalgae-biofuels_wetExtraction-l', 'sum') = 21;
rate_process_max('microalgae-biofuels_wetExtraction-l', 'shoulder') = 21;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('microalgae-biofuels_wetExtraction-l', 'algae', 'mass') = -5.042966;
coeff_process_praq('microalgae-biofuels_wetExtraction-l', 'elec', 'energy') = -1.803102;
coeff_process_praq('microalgae-biofuels_wetExtraction-l', 'heat', 'energy') = -17.1713;
coeff_process_praq('microalgae-biofuels_wetExtraction-l', 'biodiesel', 'mass') = 1;
coeff_process_praq('microalgae-biofuels_wetExtraction-l', 'CO2', 'mass') = 0.0141203;
coeff_process_praq('microalgae-biofuels_wetExtraction-l', 'methane', 'mass') = 0.02783717;
