* wastewater-biogas-elec-hydrogen_biogas-elec
PARAMETER
rate_process_max(P,T);
rate_process_max('wastewater-biogas-elec-hydrogen_biogas-elec', 'wint') = 1.206;
rate_process_max('wastewater-biogas-elec-hydrogen_biogas-elec', 'sum') = 1.206;
rate_process_max('wastewater-biogas-elec-hydrogen_biogas-elec', 'shoulder') = 1.206;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wastewater-biogas-elec-hydrogen_biogas-elec', 'biogas', 'mass') = -0.03496683;
coeff_process_praq('wastewater-biogas-elec-hydrogen_biogas-elec', 'heat', 'energy') = 0.2578773;
coeff_process_praq('wastewater-biogas-elec-hydrogen_biogas-elec', 'elec', 'energy') = 1;
