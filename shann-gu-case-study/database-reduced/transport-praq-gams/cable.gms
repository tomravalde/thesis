* cable
PARAMETER
rate_transp_max(TT);
rate_transp_max('cable') = 1000;
PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('cable', 'elec', 'energy') = -1;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('cable', 'elec', 'energy') = 1;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('elec', 'energy', 'cable') = 0;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('elec', 'energy', 'cable') = -0.01;
