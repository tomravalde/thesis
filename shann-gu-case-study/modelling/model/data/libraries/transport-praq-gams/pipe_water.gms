PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('pipe_water', 'water', 'mass') = -1;
coeff_transp_qty_src_praq('pipe_water', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('pipe_water', 'water', 'mass') = 1;
coeff_transp_qty_dest_praq('pipe_water', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('water', 'mass', 'pipe_water') = 0;
coeff_transp_dist_src_praq('elec', 'energy', 'pipe_water') = -0.0054;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('water', 'mass', 'pipe_water') = 0;
coeff_transp_dist_dest_praq('elec', 'energy', 'pipe_water') = 0;
