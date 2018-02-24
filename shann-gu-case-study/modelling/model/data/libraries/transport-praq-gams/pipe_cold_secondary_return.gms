PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('pipe_cold_secondary_return', 'cold_secondary_return', 'mass') = -1;
coeff_transp_qty_src_praq('pipe_cold_secondary_return', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('pipe_cold_secondary_return', 'cold_secondary_return', 'mass') = 1;
coeff_transp_qty_dest_praq('pipe_cold_secondary_return', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('cold_secondary_return', 'mass', 'pipe_cold_secondary_return') = 0;
coeff_transp_dist_src_praq('elec', 'energy', 'pipe_cold_secondary_return') = -0.0054;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('cold_secondary_return', 'mass', 'pipe_cold_secondary_return') = 0;
coeff_transp_dist_dest_praq('elec', 'energy', 'pipe_cold_secondary_return') = 0;
