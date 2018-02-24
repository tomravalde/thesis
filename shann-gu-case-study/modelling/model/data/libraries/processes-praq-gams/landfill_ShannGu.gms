* landfill_ShannGu
PARAMETER
rate_process_max(P,T);
rate_process_max('landfill_ShannGu', 'wint') = 0;
rate_process_max('landfill_ShannGu', 'sum') = 1;
rate_process_max('landfill_ShannGu', 'shoulder') = 1;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('landfill_ShannGu', 'waste', 'mass') = -1;
coeff_process_praq('landfill_ShannGu', 'CO2', 'mass') = 0.3;
coeff_process_praq('landfill_ShannGu', 'gasLandfill', 'energy') = 0.0013;
