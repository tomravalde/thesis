PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('road_oilUsed', 'oilUsed', 'mass') = -1;
coeff_transp_qty_src_praq('road_oilUsed', 'gasoline', 'mass') = 0;
coeff_transp_qty_src_praq('road_oilUsed', 'CO2', 'mass') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('road_oilUsed', 'oilUsed', 'mass') = 1;
coeff_transp_qty_dest_praq('road_oilUsed', 'gasoline', 'mass') = 0;
coeff_transp_qty_dest_praq('road_oilUsed', 'CO2', 'mass') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('oilUsed', 'mass', 'road_oilUsed') = 0;
coeff_transp_dist_src_praq('gasoline', 'mass', 'road_oilUsed') = -0.18;
coeff_transp_dist_src_praq('CO2', 'mass', 'road_oilUsed') = 0.3;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('oilUsed', 'mass', 'road_oilUsed') = 0;
coeff_transp_dist_dest_praq('gasoline', 'mass', 'road_oilUsed') = 0;
coeff_transp_dist_dest_praq('CO2', 'mass', 'road_oilUsed') = 0.3;
