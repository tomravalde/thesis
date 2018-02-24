* wasteOrganic-generaliser-vegWaste
PARAMETER
rate_process_max(P,T);
rate_process_max('wasteOrganic-generaliser-vegWaste', 'wint') = 1000;
rate_process_max('wasteOrganic-generaliser-vegWaste', 'sum') = 1000;
rate_process_max('wasteOrganic-generaliser-vegWaste', 'shoulder') = 1000;
PARAMETER
coeff_process_praq(P,R,Q);
coeff_process_praq('wasteOrganic-generaliser-vegWaste', 'vegWaste', 'mass') = -1;
coeff_process_praq('wasteOrganic-generaliser-vegWaste', 'waste_organic', 'mass') = 1;
