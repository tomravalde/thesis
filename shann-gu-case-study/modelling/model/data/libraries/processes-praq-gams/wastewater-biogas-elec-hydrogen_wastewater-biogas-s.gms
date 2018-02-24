* wastewater-biogas-elec-hydrogen_wastewater-biogas-s
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-biogas-elec-hydrogen_wastewater-biogas-s', 'wint') = 0.0116;
rate_process_max('wastewater-biogas-elec-hydrogen_wastewater-biogas-s', 'sum') = 0.0116;
rate_process_max('wastewater-biogas-elec-hydrogen_wastewater-biogas-s', 'shoulder') = 0.0116;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-biogas-elec-hydrogen_wastewater-biogas-s', 'wastewater', 'mass') = -1;
coeff_process_praq('wastewater-biogas-elec-hydrogen_wastewater-biogas-s', 'heat', 'energy') = -0.03301724;
coeff_process_praq('wastewater-biogas-elec-hydrogen_wastewater-biogas-s', 'elec', 'energy') = -0.05965517;
coeff_process_praq('wastewater-biogas-elec-hydrogen_wastewater-biogas-s', 'biogas', 'mass') = 0.007433621;
