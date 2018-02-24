PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('pipe_water_pure', 'water_pure', 'mass') = -1;
coeff_transp_qty_src_praq('pipe_water_pure', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('pipe_water_pure', 'water_pure', 'mass') = 1;
coeff_transp_qty_dest_praq('pipe_water_pure', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('water_pure', 'mass', 'pipe_water_pure') = 0;
coeff_transp_dist_src_praq('elec', 'energy', 'pipe_water_pure') = -0.0054;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('water_pure', 'mass', 'pipe_water_pure') = 0;
coeff_transp_dist_dest_praq('elec', 'energy', 'pipe_water_pure') = 0;
