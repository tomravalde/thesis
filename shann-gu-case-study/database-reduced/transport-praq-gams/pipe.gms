* pipe
PARAMETER
rate_transp_max(TT);
rate_transp_max('pipe') = 1000;
PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('pipe', 'water', 'mass') = -1;
coeff_transp_qty_src_praq('pipe', 'water', 'energy') = 0;
coeff_transp_qty_src_praq('pipe', 'water', 'contam') = -0.004;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('pipe', 'water', 'mass') = 1;
coeff_transp_qty_dest_praq('pipe', 'water', 'energy') = 0;
coeff_transp_qty_dest_praq('pipe', 'water', 'contam') = 0.004;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('water', 'mass', 'pipe') = 0;
coeff_transp_dist_src_praq('water', 'energy', 'pipe') = 0;
coeff_transp_dist_src_praq('water', 'contam', 'pipe') = 0;
coeff_transp_dist_src_praq('elec', 'energy', 'pipe') = -0.03;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('water', 'mass', 'pipe') = 0;
coeff_transp_dist_dest_praq('water', 'energy', 'pipe') = 0;
coeff_transp_dist_dest_praq('water', 'contam', 'pipe') = 0;
coeff_transp_dist_dest_praq('elec', 'energy', 'pipe') = 0;
