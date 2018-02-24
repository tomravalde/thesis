PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('road_hydrogen', 'hydrogen', 'mass') = -1;
coeff_transp_qty_src_praq('road_hydrogen', 'gasoline', 'mass') = 0;
coeff_transp_qty_src_praq('road_hydrogen', 'CO2', 'mass') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('road_hydrogen', 'hydrogen', 'mass') = 1;
coeff_transp_qty_dest_praq('road_hydrogen', 'gasoline', 'mass') = 0;
coeff_transp_qty_dest_praq('road_hydrogen', 'CO2', 'mass') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('hydrogen', 'mass', 'road_hydrogen') = 0;
coeff_transp_dist_src_praq('gasoline', 'mass', 'road_hydrogen') = -0.18;
coeff_transp_dist_src_praq('CO2', 'mass', 'road_hydrogen') = 0.3;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('hydrogen', 'mass', 'road_hydrogen') = 0;
coeff_transp_dist_dest_praq('gasoline', 'mass', 'road_hydrogen') = 0;
coeff_transp_dist_dest_praq('CO2', 'mass', 'road_hydrogen') = 0.3;
