PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('pipe_hot_primary_return', 'hot_primary_return', 'mass') = -1;
coeff_transp_qty_src_praq('pipe_hot_primary_return', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('pipe_hot_primary_return', 'hot_primary_return', 'mass') = 1;
coeff_transp_qty_dest_praq('pipe_hot_primary_return', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('hot_primary_return', 'mass', 'pipe_hot_primary_return') = 0;
coeff_transp_dist_src_praq('elec', 'energy', 'pipe_hot_primary_return') = -0.0054;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('hot_primary_return', 'mass', 'pipe_hot_primary_return') = 0;
coeff_transp_dist_dest_praq('elec', 'energy', 'pipe_hot_primary_return') = 0;
