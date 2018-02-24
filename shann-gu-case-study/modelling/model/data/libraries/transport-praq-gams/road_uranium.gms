PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('road_uranium', 'uranium', 'mass') = -1;
coeff_transp_qty_src_praq('road_uranium', 'gasoline', 'mass') = 0;
coeff_transp_qty_src_praq('road_uranium', 'CO2', 'mass') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('road_uranium', 'uranium', 'mass') = 1;
coeff_transp_qty_dest_praq('road_uranium', 'gasoline', 'mass') = 0;
coeff_transp_qty_dest_praq('road_uranium', 'CO2', 'mass') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('uranium', 'mass', 'road_uranium') = 0;
coeff_transp_dist_src_praq('gasoline', 'mass', 'road_uranium') = -0.18;
coeff_transp_dist_src_praq('CO2', 'mass', 'road_uranium') = 0.3;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('uranium', 'mass', 'road_uranium') = 0;
coeff_transp_dist_dest_praq('gasoline', 'mass', 'road_uranium') = 0;
coeff_transp_dist_dest_praq('CO2', 'mass', 'road_uranium') = 0.3;
