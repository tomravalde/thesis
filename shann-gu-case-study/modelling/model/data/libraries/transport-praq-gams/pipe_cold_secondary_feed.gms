PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('pipe_cold_secondary_feed', 'cold_secondary_feed', 'mass') = -1;
coeff_transp_qty_src_praq('pipe_cold_secondary_feed', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('pipe_cold_secondary_feed', 'cold_secondary_feed', 'mass') = 1;
coeff_transp_qty_dest_praq('pipe_cold_secondary_feed', 'elec', 'energy') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('cold_secondary_feed', 'mass', 'pipe_cold_secondary_feed') = 0;
coeff_transp_dist_src_praq('elec', 'energy', 'pipe_cold_secondary_feed') = -0.0054;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('cold_secondary_feed', 'mass', 'pipe_cold_secondary_feed') = 0;
coeff_transp_dist_dest_praq('elec', 'energy', 'pipe_cold_secondary_feed') = 0;
