PARAMETER
coeff_transp_qty_src_praq(TT,R,Q);
coeff_transp_qty_src_praq('road_manure', 'manure', 'mass') = -1;
coeff_transp_qty_src_praq('road_manure', 'gasoline', 'mass') = 0;
coeff_transp_qty_src_praq('road_manure', 'CO2', 'mass') = 0;
PARAMETER
coeff_transp_qty_dest_praq(TT,R,Q);
coeff_transp_qty_dest_praq('road_manure', 'manure', 'mass') = 1;
coeff_transp_qty_dest_praq('road_manure', 'gasoline', 'mass') = 0;
coeff_transp_qty_dest_praq('road_manure', 'CO2', 'mass') = 0;
PARAMETER
coeff_transp_dist_src_praq(R,Q,TT);
coeff_transp_dist_src_praq('manure', 'mass', 'road_manure') = 0;
coeff_transp_dist_src_praq('gasoline', 'mass', 'road_manure') = -0.18;
coeff_transp_dist_src_praq('CO2', 'mass', 'road_manure') = 0.3;
PARAMETER
coeff_transp_dist_dest_praq(R,Q,TT);
coeff_transp_dist_dest_praq('manure', 'mass', 'road_manure') = 0;
coeff_transp_dist_dest_praq('gasoline', 'mass', 'road_manure') = 0;
coeff_transp_dist_dest_praq('CO2', 'mass', 'road_manure') = 0.3;
