$TITLE Fast RTN

$ONTEXT
This model calculates the optimal provision of
resource conversion technologies and
networks in order to meet a pattern of demands.

This version optimises across two steady
state periods: summer and winter
	
Version 0.1
27 Feb 2014 
(Based on RTN 0.4.0 by Dr Nouri Samsatli, Dr James Keirstead, Prof Nilay Shah
Urban Energy Systems Project
Imperial College London
www.imperial.ac.uk/urbanenergysystems
$OFFTEXT

* Options
$EOLCOM //
$ONINLINE
$OFFSYMXREF
$OFFSYMLIST
$OFFDIGIT
$ONEMPTY
SETS
T times
/
wint
sum
shoulder
/;
SETS
R resources
/
algae
algaeDry
ash
biodiesel
biogas
biomass
biomassAgriWaste
biooil
butanol
CNG
CO2
coal
coke
cold_primary_feed
cold_primary_return
cold_secondary_feed
cold_secondary_return
cool
diesel
digestate
DME
elec
ethanol
fertilizer
foodWaste
fuel
fuelOil
gasLandfill
gasNatural
gasoline
groundWater
heat
hot_primary_feed
hot_primary_return
hot_secondary_feed
hot_secondary_return
hydrogen
leachate
liquidFuel
LPG
manure
metal
methane
methanol
MSW
nuclearFuelSpent
oilUsed
ozone
propane
rain
recyclables
seawater
slag
sludge
solar
uranium
vegWaste
waste_organic
waste
wastewater
water_pure
water
waterBrackish
waterIrrigation
waterNonPotable
waterPotable
wind
wood
/;
SETS
Q qualities
/
mass
energy
/;
SETS
P processes
/
airCon_central
airCon_split
boiler_domestic
/;
SETS
Z zones
/
dormitories
energyIsland
factory
factory_assembly
factory_blades
hospital
multifunction
northDistrict
quality
reserved
residential
school
tech
/;
ALIAS(Z,ZZ);
SETS 
nb(Z,ZZ); 
nb('factory_assembly','factory') = yes;
nb('northDistrict','factory') = yes;
nb('multifunction','northDistrict') = yes;
nb('factory_blades','northDistrict') = yes;
nb('tech','northDistrict') = yes;
nb('quality','northDistrict') = yes;
nb('dormitories','northDistrict') = yes;
nb('residential','northDistrict') = yes;
nb('energyIsland','northDistrict') = yes;
nb('hospital','residential') = yes;
nb('school','residential') = yes;
nb('reserved','residential') = yes;
nb(Z,ZZ)$nb(ZZ,Z) = yes;
SETS
TT transport technologies
/
pipe_gas
cable
pipe_wastewater
pipe_waterPotable
road_coal
/;
$include code/options-short.gms

PARAMETER
demand_quality(R,Q,T,Z)
/
heat .energy .wint .factory 6
heat .energy .shoulder .factory 3
elec .energy .wint .factory 12.75
elec .energy .sum .factory 12.75
elec .energy .shoulder .factory 12.75
waterPotable .mass .wint .factory 4.44
waterPotable .mass .sum .factory 4.44
waterPotable .mass .shoulder .factory 4.44
wastewater .mass .wint .factory -4.63
wastewater .mass .sum .factory -4.63
wastewater .mass .shoulder .factory -4.63
waste .mass .wint .factory -0.003
waste .mass .sum .factory -0.003
waste .mass .shoulder .factory -0.003
waste_organic .mass .wint .factory -0.004
waste_organic .mass .sum .factory -0.004
waste_organic .mass .shoulder .factory -0.004
waterNonPotable .mass .wint .factory 2.31
waterNonPotable .mass .sum .factory 2.31
waterNonPotable .mass .shoulder .factory 2.31
heat .energy .wint .factory_assembly 5.6
heat .energy .shoulder .factory_assembly 2.8
cool .energy .sum .factory_assembly 1.985
waterPotable .mass .wint .northDistrict 5.07
waterPotable .mass .sum .northDistrict 5.07
waterPotable .mass .shoulder .northDistrict 5.07
wastewater .mass .wint .northDistrict -4.63
wastewater .mass .sum .northDistrict -4.63
wastewater .mass .shoulder .northDistrict -4.63
waste .mass .wint .northDistrict -0.003
waste .mass .sum .northDistrict -0.003
waste .mass .shoulder .northDistrict -0.003
waste_organic .mass .wint .northDistrict -0.004
waste_organic .mass .sum .northDistrict -0.004
waste_organic .mass .shoulder .northDistrict -0.004
waterNonPotable .mass .wint .northDistrict 2.31
waterNonPotable .mass .sum .northDistrict 2.31
waterNonPotable .mass .shoulder .northDistrict 2.31
cool .energy .sum .multifunction 0.304
cool .energy .sum .factory_blades 0.4
cool .energy .sum .tech 0.4
cool .energy .sum .quality 0.288
cool .energy .sum .dormitories 0.94
heat .energy .wint .residential 13.22
cool .energy .sum .residential 17.28
elec .energy .wint .residential 6.85
elec .energy .sum .residential 6.85
elec .energy .shoulder .residential 6.85
waterPotable .mass .wint .residential 10.6
waterPotable .mass .sum .residential 10.6
waterPotable .mass .shoulder .residential 10.6
wastewater .mass .wint .residential -4.63
wastewater .mass .sum .residential -4.63
wastewater .mass .shoulder .residential -4.63
waste .mass .wint .residential -0.003
waste .mass .sum .residential -0.003
waste .mass .shoulder .residential -0.003
waste_organic .mass .wint .residential -0.004
waste_organic .mass .sum .residential -0.004
waste_organic .mass .shoulder .residential -0.004
waterNonPotable .mass .wint .residential 2.31
waterNonPotable .mass .sum .residential 2.31
waterNonPotable .mass .shoulder .residential 2.31
heat .energy .shoulder .hospital 6.61
cool .energy .sum .hospital 0.272
cool .energy .sum .school 0.73
heat .energy .wint .energyIsland 0.05
heat .energy .shoulder .energyIsland 0.025
cool .energy .sum .energyIsland 0.1
heat .energy .wint .reserved 2.4
heat .energy .shoulder .reserved 1.2
/; 
PARAMETER
demand_quantity(R,T,Z)
/
heat .wint .factory 6
heat .shoulder .factory 3
elec .wint .factory 12.75
elec .sum .factory 12.75
elec .shoulder .factory 12.75
waterPotable .wint .factory 4.44
waterPotable .sum .factory 4.44
waterPotable .shoulder .factory 4.44
wastewater .wint .factory -4.63
wastewater .sum .factory -4.63
wastewater .shoulder .factory -4.63
waste .wint .factory -0.003
waste .sum .factory -0.003
waste .shoulder .factory -0.003
waste_organic .wint .factory -0.004
waste_organic .sum .factory -0.004
waste_organic .shoulder .factory -0.004
waterNonPotable .wint .factory 2.31
waterNonPotable .sum .factory 2.31
waterNonPotable .shoulder .factory 2.31
heat .wint .factory_assembly 5.6
heat .shoulder .factory_assembly 2.8
cool .sum .factory_assembly 1.985
waterPotable .wint .northDistrict 5.07
waterPotable .sum .northDistrict 5.07
waterPotable .shoulder .northDistrict 5.07
wastewater .wint .northDistrict -4.63
wastewater .sum .northDistrict -4.63
wastewater .shoulder .northDistrict -4.63
waste .wint .northDistrict -0.003
waste .sum .northDistrict -0.003
waste .shoulder .northDistrict -0.003
waste_organic .wint .northDistrict -0.004
waste_organic .sum .northDistrict -0.004
waste_organic .shoulder .northDistrict -0.004
waterNonPotable .wint .northDistrict 2.31
waterNonPotable .sum .northDistrict 2.31
waterNonPotable .shoulder .northDistrict 2.31
cool .sum .multifunction 0.304
cool .sum .factory_blades 0.4
cool .sum .tech 0.4
cool .sum .quality 0.288
cool .sum .dormitories 0.94
heat .wint .residential 13.22
cool .sum .residential 17.28
elec .wint .residential 6.85
elec .sum .residential 6.85
elec .shoulder .residential 6.85
waterPotable .wint .residential 10.6
waterPotable .sum .residential 10.6
waterPotable .shoulder .residential 10.6
wastewater .wint .residential -4.63
wastewater .sum .residential -4.63
wastewater .shoulder .residential -4.63
waste .wint .residential -0.003
waste .sum .residential -0.003
waste .shoulder .residential -0.003
waste_organic .wint .residential -0.004
waste_organic .sum .residential -0.004
waste_organic .shoulder .residential -0.004
waterNonPotable .wint .residential 2.31
waterNonPotable .sum .residential 2.31
waterNonPotable .shoulder .residential 2.31
heat .shoulder .hospital 6.61
cool .sum .hospital 0.272
cool .sum .school 0.73
heat .wint .energyIsland 0.05
heat .shoulder .energyIsland 0.025
cool .sum .energyIsland 0.1
heat .wint .reserved 2.4
heat .shoulder .reserved 1.2
/; 
PARAMETER
span(T)
/
wint 7776000
sum 7776000
shoulder 15552000
/;
PARAMETER 
length(Z,ZZ); 
length('factory_assembly', 'factory') = 0.5;
length('factory', 'factory_assembly') = 0.5;
length('northDistrict', 'factory') = 0.9;
length('factory', 'northDistrict') = 0.9;
length('multifunction', 'northDistrict') = 0.5;
length('northDistrict', 'multifunction') = 0.5;
length('factory_blades', 'northDistrict') = 0.5;
length('northDistrict', 'factory_blades') = 0.5;
length('tech', 'northDistrict') = 0.5;
length('northDistrict', 'tech') = 0.5;
length('quality', 'northDistrict') = 0.5;
length('northDistrict', 'quality') = 0.5;
length('dormitories', 'northDistrict') = 0.5;
length('northDistrict', 'dormitories') = 0.5;
length('residential', 'northDistrict') = 2.2;
length('northDistrict', 'residential') = 2.2;
length('energyIsland', 'northDistrict') = 1.7;
length('northDistrict', 'energyIsland') = 1.7;
length('hospital', 'residential') = 0.5;
length('residential', 'hospital') = 0.5;
length('school', 'residential') = 0.5;
length('residential', 'school') = 0.5;
length('reserved', 'residential') = 1;
length('residential', 'reserved') = 1;
PARAMETER
imports_min(R,T)
/
water .wint 0
heat .wint 0
cool .wint 0
gasNatural .wint 0
elec .wint 0
wastewater .wint 0
waste_organic .wint 0
waterPotable .wint 0
waterNonPotable .wint 0
gasoline .wint 0
CO2 .wint 0
waste .wint 0
coal .wint 0
water .sum 0
heat .sum 0
cool .sum 0
gasNatural .sum 0
elec .sum 0
wastewater .sum 0
waste_organic .sum 0
waterPotable .sum 0
waterNonPotable .sum 0
gasoline .sum 0
CO2 .sum 0
waste .sum 0
coal .sum 0
water .shoulder 0
heat .shoulder 0
cool .shoulder 0
gasNatural .shoulder 0
elec .shoulder 0
wastewater .shoulder 0
waste_organic .shoulder 0
waterPotable .shoulder 0
waterNonPotable .shoulder 0
gasoline .shoulder 0
CO2 .shoulder 0
waste .shoulder 0
coal .shoulder 0
/; 
PARAMETER
imports_max(R,T)
/
water .wint 0
heat .wint 0
cool .wint 0
gasNatural .wint 100
elec .wint 10000
wastewater .wint 0
waste_organic .wint 0
waterPotable .wint 100
waterNonPotable .wint 100
gasoline .wint 100
CO2 .wint 0
waste .wint 0
coal .wint 100
water .sum 0
heat .sum 0
cool .sum 0
gasNatural .sum 100
elec .sum 10000
wastewater .sum 0
waste_organic .sum 0
waterPotable .sum 100
waterNonPotable .sum 100
gasoline .sum 100
CO2 .sum 0
waste .sum 0
coal .sum 100
water .shoulder 0
heat .shoulder 0
cool .shoulder 0
gasNatural .shoulder 100
elec .shoulder 10000
wastewater .shoulder 0
waste_organic .shoulder 0
waterPotable .shoulder 100
waterNonPotable .shoulder 100
gasoline .shoulder 100
CO2 .shoulder 0
waste .shoulder 0
coal .shoulder 100
/; 
PARAMETER
exports_min(R,T)
/
water .wint 0
heat .wint 0
cool .wint 0
gasNatural .wint 0
elec .wint 0
wastewater .wint 0
waste_organic .wint 0
waterPotable .wint 0
waterNonPotable .wint 0
gasoline .wint 0
CO2 .wint 0
waste .wint 0
coal .wint 0
water .sum 0
heat .sum 0
cool .sum 0
gasNatural .sum 0
elec .sum 0
wastewater .sum 0
waste_organic .sum 0
waterPotable .sum 0
waterNonPotable .sum 0
gasoline .sum 0
CO2 .sum 0
waste .sum 0
coal .sum 0
water .shoulder 0
heat .shoulder 0
cool .shoulder 0
gasNatural .shoulder 0
elec .shoulder 0
wastewater .shoulder 0
waste_organic .shoulder 0
waterPotable .shoulder 0
waterNonPotable .shoulder 0
gasoline .shoulder 0
CO2 .shoulder 0
waste .shoulder 0
coal .shoulder 0
/; 
PARAMETER
exports_max(R,T)
/
water .wint 1000
heat .wint 1000
cool .wint 1000
gasNatural .wint 1000
elec .wint 1000
wastewater .wint 1000
waste_organic .wint 1000
waterPotable .wint 1000
waterNonPotable .wint 1000
gasoline .wint 1000
CO2 .wint 1000
waste .wint 1000
coal .wint 1000
water .sum 1000
heat .sum 1000
cool .sum 1000
gasNatural .sum 1000
elec .sum 1000
wastewater .sum 1000
waste_organic .sum 1000
waterPotable .sum 1000
waterNonPotable .sum 1000
gasoline .sum 1000
CO2 .sum 1000
waste .sum 1000
coal .sum 1000
water .shoulder 1000
heat .shoulder 1000
cool .shoulder 1000
gasNatural .shoulder 1000
elec .shoulder 1000
wastewater .shoulder 1000
waste_organic .shoulder 1000
waterPotable .shoulder 1000
waterNonPotable .shoulder 1000
gasoline .shoulder 1000
CO2 .shoulder 1000
waste .shoulder 1000
coal .shoulder 1000
/; 
PARAMETER
num_zones_imports(R)
/
water 0
heat 0
cool 0
gasNatural 1
elec 1
wastewater 0
waste_organic 0
waterPotable 1
waterNonPotable 13
gasoline 1
CO2 0
waste 0
coal 1
/;
PARAMETER
num_zones_exports(R)
/
water 13
heat 13
cool 13
gasNatural 13
elec 13
wastewater 13
waste_organic 13
waterPotable 13
waterNonPotable 13
gasoline 13
CO2 13
waste 13
coal 13
/;
PARAMETER
cost_resource(R)
/
water 0
heat 0
cool 0
gasNatural 0.78
elec 0.028
wastewater 0
waste_organic 0
waterPotable 0
waterNonPotable 0
gasoline 0.98
CO2 0
waste 0
coal 0.05
/;
PARAMETER
emissions_resource(R)
/
water 0
heat 0.6077173688
cool 0.9222645951
gasNatural 0.3876714087
elec 0.4644957075
wastewater 0.4459190248
waste_organic 0.2853973417
waterPotable 0.0370612224
waterNonPotable 0
gasoline 0.8472327783
CO2 0.7238466528
waste 0.1117896924
coal 0.541428895
/;
PARAMETER
cost_process_cap(P)
/
airCon_central 1202.875
airCon_split 1202.875
boiler_domestic 2362.5
/;
PARAMETER
max_num(P)
/
airCon_central 1000000
airCon_split 1000000
boiler_domestic 1000000
/;
PARAMETER
cost_transp_cap(TT)
/
pipe_gas 215198
cable 114772
pipe_wastewater 215198
pipe_waterPotable 215198
road_coal 0
/;
PARAMETER
rate_transp_min(TT,T)
/
pipe_gas .wint 0
cable .wint 0
pipe_wastewater .wint 0
pipe_waterPotable .wint 0
road_coal .wint 0
pipe_gas .sum 0
cable .sum 0
pipe_wastewater .sum 0
pipe_waterPotable .sum 0
road_coal .sum 0
pipe_gas .shoulder 0
cable .shoulder 0
pipe_wastewater .shoulder 0
pipe_waterPotable .shoulder 0
road_coal .shoulder 0
/; 
PARAMETER
rate_transp_max(TT,T)
/
pipe_gas .wint 1000
cable .wint 5000
pipe_wastewater .wint 1000
pipe_waterPotable .wint 1000
road_coal .wint 1000
pipe_gas .sum 1000
cable .sum 5000
pipe_wastewater .sum 1000
pipe_waterPotable .sum 1000
road_coal .sum 1000
pipe_gas .shoulder 1000
cable .shoulder 5000
pipe_wastewater .shoulder 1000
pipe_waterPotable .shoulder 1000
road_coal .shoulder 1000
/; 
PARAMETER
resource_quality(R,Q)
/
water .mass 1
heat .energy 1
cool .energy 1
gasNatural .mass 1
elec .energy 1
wastewater .mass 1
waste_organic .mass 1
waterPotable .mass 1
waterNonPotable .mass 1
gasoline .mass 1
CO2 .mass 1
waste .mass 1
coal .mass 1
/;
PARAMETER 
binary_resource(R,Q); 
binary_resource(R,Q)$resource_quality(R,Q) = 1; 
$include data/libraries/processes-praq-gams/airCon_central.gms 
$include data/libraries/processes-praq-gams/airCon_split.gms 
$include data/libraries/processes-praq-gams/boiler_domestic.gms 
PARAMETER 
binary_process(P,R,Q); 
binary_process(P,R,Q)$(binary_resource(R,Q)=1) = 1; 
PARAMETER 
binary_transport(TT,R,Q); 
binary_transport(TT,R,Q)$(binary_resource(R,Q)=1) = 1; 
$include data/libraries/transport-praq-gams/pipe_gas.gms 
$include data/libraries/transport-praq-gams/cable.gms 
$include data/libraries/transport-praq-gams/pipe_wastewater.gms 
$include data/libraries/transport-praq-gams/pipe_waterPotable.gms 
$include data/libraries/transport-praq-gams/road_coal.gms 
SCALAR pareto_lim /1e8/;
$include code/variables-space-time.gms 
$include code/equations-space-time-gridCase_minCost.gms 
$include code/custom.gms 
$include code/solve-spatial.gms 
