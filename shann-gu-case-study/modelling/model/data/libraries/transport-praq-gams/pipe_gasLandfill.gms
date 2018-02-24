PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('pipe_gasLandfill', 'gasLandfill', 'energy') = -1;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('pipe_gasLandfill', 'gasLandfill', 'energy') = 1;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('gasLandfill', 'energy', 'pipe_gasLandfill') = 0;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('gasLandfill', 'energy', 'pipe_gasLandfill') = 0;
