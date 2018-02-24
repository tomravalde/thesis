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
activated-sludge-l
activated-sludge-ozone-l
activated-sludge-ozone-s
activated-sludge-s
airCon_central
airCon_split
algae-cultivation-l
algae-cultivation-s
algae-production-pond-l
algae-production-pond-s
anaerobic-digester-annamox-l
anaerobic-digester-annamox-s
anaerobicDigestion_sludge-l
anaerobicDigestion_sludge_manure-l
anaerobicDigestion_sludge_manure-s
anaerobicDigestion_sludge-s
anaerobicDigestion_sludge_usedOil-l
anaerobicDigestion_sludge_usedOil-s
anaerobicDigestion_wastewater-l
anaerobicDigestion_wastewater-s
anaerobicFermentation
biochemical_cornStover_ethanol-l
biochemical_cornStover_ethanol-s
biochemical_wastePaper_ethanol-l
biochemical_wastePaper_ethanol-s
biochemical_wheatStraw_ethanol-l
biochemical_wheatStraw_ethanol-s
biochemical_woodChips_ethanol-l
biochemical_woodChips_ethanol-s
biodiesel_boiler-l
biodiesel_boiler-s
biodiesel-cookingOil-l
biodiesel-cookingOil-s
biogas-CHP-l
biogas-CHP-s
biogas-MSW-agri-l
biogas-MSW-agri-s
biogas-MSW-l
biogas-MSW-sewage-combo-l
biogas-MSW-sewage-combo-s
biogas-MSW-s
biogas-UPGRADE-methane-AwR-l
biogas-UPGRADE-methane-AwR-s
biogas-UPGRADE-methane-BABIU-l
biogas-UPGRADE-methane-BABIU-s
biogas-UPGRADE-methane-HPWS-l
biogas-UPGRADE-methane-HPWS-s
biogas-vegWaste-l
biogas-vegWaste-s
biomass_biogas-biodiesel
biomass_ethanol-l
biomass_ethanol-s
biomass-gasification-l
biomass-gasification-s
biomass-pyrolysis-l
biomass-pyrolysis-s
biomass-to-DME
boiler_domestic
boiler_gas
boilerRoom
centralCooling
centralHeating
CHP-biomass-l
CHP-biomass-s
CHP-decentralised-fuelCell_biomass-l
CHP-decentralised-fuelCell_biomass-s
CHP-gas_fuelOil-l
CHP-gas_fuelOil-s
CHP-gas_gasNatural-l
CHP-gas_gasNatural-s
CHP-microTurbine_gasNatural-l
CHP-microTurbine_gasNatural-s
CHP-microTurbine_liquidFuel-l
CHP-microTurbine_liquidFuel-s
CHP-reciprocatingEngine_gasNatural-l
CHP-reciprocatingEngine_gasNatural-s
CHP-reciprocatingEngine_LPG-l
CHP-reciprocatingEngine_LPG-s
CHP-reciprocatingEngine_wasteGas-l
CHP-reciprocatingEngine_wasteGas-s
CHP-steam-large_biogas
CHP-steam-large_fuelOil
CHP-steam-large_gasNatural
CHP-steam-large_hydrogen
CHP-steam-large_liquidFuel
CHP-steam-large_LPG
CHP-steam-large_methanol
CHP-steam-large_propane
CHP-steam-large_wasteGas
CHP-steam-small_biogas
CHP-steam-small_fuelOil
CHP-steam-small_gasNatural
CHP-steam-small_liquidFuel_hydrogen
CHP-steam-small_liquidFuel
CHP-steam-small_LPG
CHP-steam-small_methanol
CHP-steam-small_propane
CHP-steam-small_wasteGas
CHP
coal-combustion-bituminous-l
coal-combustion-bituminous-s
cofiring-biomass-coal-l
cofiring-biomass-coal-s
cofiring-boiler_coal-biomass-l
cofiring-boiler_coal-biomass-s
combustion-biomass-l
combustion-biomass-s
combustion-coal-combined-cycle-l
combustion-coal-combined-cycle-s
combustion-coal-l
combustion-coal-s
combustion-sludgeDigested-l
combustion-sludgeDigested-s
combustion-sludgeRaw-l
combustion-sludgeRaw-s
constructed-wetland-irrigation-l
constructed-wetland-irrigation-s
constructed-wetland-nonPotable-l
constructed-wetland-nonPotable-s
conventionalAirConditioning
cooling-evaporative-cooling
cooling-evaporative-heating
cooling-thermallyActivated_adsorption-activatedCarbon
cooling-thermallyActivated_adsorption-silica-l
cooling-thermallyActivated_adsorption-silica-s
cooling-thermallyActivated_H2O-NH3_double
cooling-thermallyActivated_H2O-NH3_single-l
cooling-thermallyActivated_H2O-NH3_single-small-l
cooling-thermallyActivated_H2O-NH3_single-small-s
cooling-thermallyActivated_H2O-NH3_single-s
cooling-thermallyActivated_LiBr-H2O_double-l
cooling-thermallyActivated_LiBr-H2O_double-s
cooling-thermallyActivated_LiBr-H2O_single-l
cooling-thermallyActivated_LiBr-H2O_single-s
cooling-thermallyActivated_liquidDessicant-l
cooling-thermallyActivated_liquidDessicant-s
cooling-thermallyActivated_solidDessicant-l
cooling-thermallyActivated_solidDessicant-s
desalination-multiEffectDistillation-l
desalination-multiEffectDistillation-s
desalination-multiStageFlash-l
desalination-multiStageFlash-s
desalination-photovoltaicModules
desalination-ReverseOsmosis-l
desalination-ReverseOsmosis-PV-l
desalination-ReverseOsmosis-PV-s
desalination-ReverseOsmosis-s
desalination-solarPond-l
desalination-solarPond-s
digestion_biomassAgriWaste_biodiesel-l
digestion_biomassAgriWaste_biodiesel-s
distributed-engine-cogen-l
distributed-engine-cogen-s
distributed-engine-l
distributed-engine-s
distributed-gas-turbine-micro-cogen-l
distributed-gas-turbine-micro-cogen-s
distributed-gas-turbine-micro-l
distributed-gas-turbine-micro-s
distributed-solar-l
distributed-solar-s
distributed-wind-l
distributed-wind-s
district-cogen-absorptionChiller
district-cogen-heating
elecplant-biomass-l
elecplant-biomass-s
elecplant-coal-l
elecplant-coal-s
elecplant-cofiring-biomass-coal-fluidisedBed-l
elecplant-cofiring-biomass-coal-fluidisedBed-s
elecplant_hydrogenLooping-l
elecplant_hydrogenLooping-s
fossilHydrogen_intrinsicCO2capture
gasif-bmass-methanol-condensingTurbine-hPump-twoSteamLevels-l
gasif-bmass-methanol-condensingTurbine-hPump-twoSteamLevels-s
gasif-bmass-methanol-condensingTurbine-noDrying-adj-l
gasif-bmass-methanol-condensingTurbine-noDrying-adj-s
gasification-MSW-elec-l
gasification-MSW-elec-s
gasification_sludge_hydrogen-l
gasification_sludge_hydrogen-s
gasification_sludge-l
gasification_sludge-s
gasification-waste-high-temp-l
gasification-waste-high-temp_steam-l
gasification-waste-high-temp_steam-s
gasification-waste-high-temp-s
gasification-waste-plama-ICE-steam-CC-l
gasification-waste-plama-ICE-steam-CC-s
groundWater-pumping-ShannGu
heatEx_cold
heatEx_hot
heatingPlant-pyrolysis_biomass-oil
heatPump-ASHP-highEff-radOrDHW-l
heatPump-ASHP-highEff-radOrDHW-s
heatPump-ASHP-highEff-screedFloor-l
heatPump-ASHP-highEff-screedFloor-s
heatPump-ASHP-highEff-timberFloor-l
heatPump-ASHP-highEff-timberFloor-s
heatPump-ASHP-screedFloor-l
heatPump-ASHP-screedFloor-s
heatPump-ASHP-twoStage-screedFloor-l
heatPump-ASHP-twoStage-screedFloor-s
heatPump-ASHP-twoStage-timberFloor-l
heatPump-ASHP-twoStage-timberFloor-s
heatPump-groundCoupled-heating-l
heatPump-groundCoupled-heating-s
heatPump_ground
heatPump-GSHP-ground-radAndDHW-l
heatPump-GSHP-ground-radAndDHW-s
heatPump-GSHP-ground-radOrDHW-l
heatPump-GSHP-ground-radOrDHW-s
heatPump-GSHP-ground-screedFloor-l
heatPump-GSHP-ground-screedFloor-s
heatPump-GSHP-ground-timberFloor-l
heatPump-GSHP-ground-timberFloor-s
heatPump-GSHP-radOrDHW-l
heatPump-GSHP-radOrDHW-s
heatPump-GSHP-screedFloor-l
heatPump-GSHP-screedFloor-s
heatPump-GSHP-timberFloor-l
heatPump-GSHP-timberFloor-s
heatPump-sewage-cooling-l
heatPump-sewage-cooling-s
heatPump-sewage-heating-l
heatPump-sewage-heating-s
heatPump-solarAssisted-cooling
heatPump-solarAssisted-heating
heatPump-transcriticalCO2-radAndDHW-l
heatPump-transcriticalCO2-radAndDHW-s
heatPump-transcriticalCO2-radOrDHW-l
heatPump-transcriticalCO2-radOrDHW-s
heatPump-transcriticalCO2-screedFloor-l
heatPump-transcriticalCO2-screedFloor-s
heatPump_water
leachateTreatment_anaerobicMembraneBioreactor
leachateTreatment-electrodyalysis
LiBr_chill
LiBr_heat
microalgae-biofuels_wetExtraction-l
microalgae-biofuels_wetExtraction-s
microCHP-fuelCell-methane
mixedRawSludge_biogas-l
mixedRawSludge_biogas-s
nuclear-directUseSpentFuel-l
nuclear-directUseSpentFuel-s
nuclear-fastReactorRecycling-pyroprocess-l
nuclear-fastReactorRecycling-pyroprocess-s
nuclear-onceThrough-l
nuclear-onceThrough-s
nuclear-thermalReactorRecycling-l
nuclear-thermalReactorRecycling-s
review-butanol-fermentation-l
review-butanol-fermentation-s
review-methanogenic-digestion-l
review-methanogenic-digestion-s
SAF-MBR_wastewater-l
SAF-MBR_wastewater-s
sewageTreatment
solar-CSP-dryCooling-l
solar-CSP-dryCooling-s
solar-CSP-l
solar-CSP-s
surfaceWater_treatment-potable-l
surfaceWater_treatment-potable-s
treatment_wastewater
wasteGas-l
wasteGas-s
wastewater-biogas-elec-hydrogen_biogas-elec
wastewater-biogas-elec-hydrogen_elec-hydrogen_HTE-l
wastewater-biogas-elec-hydrogen_elec-hydrogen_HTE-s
wastewater-biogas-elec-hydrogen_elec-hydrogen_KOH-l
wastewater-biogas-elec-hydrogen_elec-hydrogen_KOH-s
wastewater-biogas-elec-hydrogen_elec-hydrogen_PEM-l
wastewater-biogas-elec-hydrogen_elec-hydrogen_PEM-s
wastewater-biogas-elec-hydrogen_wastewater-biogas-l
wastewater-biogas-elec-hydrogen_wastewater-biogas-s
wasteWaterEffluent_livingMachine
wasteWaterEffluent_wetlands-l
wasteWaterEffluent_wetlands-s
wastewater-reuse-irrigation-l
wastewater-reuse-irrigation-s
wastewater-reuse-potable-l
wastewater-reuse-potable-s
wastewater-reuse-residential-l
wastewater-reuse-residential-s
waterTreatment
WtE-l
WtE-MSW_cogen-l
WtE-MSW_cogen-s
WtE-MSW_elec-l
WtE-MSW_elec-s
WtE-s
landfill_ShannGu
water-generaliser-NonPotable
MSW-splitter
waste-generaliser-biomassAgri
waste-generaliser-digestate
waste-generaliser-foodWaste
waste-generaliser-MSW
waste-generaliser-organic
waste-generaliser-recyclable
waste-generaliser-vegWaste
wasteOrganic-generaliser-vegWaste
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
pipe_hot_primary_feed
pipe_hot_primary_return
pipe_hot_secondary_feed
pipe_hot_secondary_return
pipe_cold_primary_feed
pipe_cold_primary_return
pipe_cold_secondary_feed
pipe_cold_secondary_return
cable
pipe_wastewater
pipe_water
pipe_waterPotable
pipe_water_pure
road_wasteOrganic
road_algaeDry
road_ash
road_biodiesel
road_biomassAgriWaste
road_biomass
road_biooil
road_butanol
road_coal
road_coke
road_diesel
road_digestate
road_DME
road_ethanol
road_fertilizer
road_foodWaste
road_fuelOil
pipe_gasLandfill
road_gasoline
pipe_groundWater
road_hydrogen
road_liquidFuel
road_LPG
road_manure
road_metal
pipe_methane
road_methanol
road_MSW
road_nuclearFuelSpent
road_oilUsed
road_recyclables
road_slag
road_sludge
road_uranium
road_vegWaste
road_waste
pipe_waterNonPotable
road_wood
/;
$include code/options-long.gms

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
heat .wint 0
cool .wint 0
hot_primary_feed .wint 0
hot_primary_return .wint 0
hot_secondary_feed .wint 0
hot_secondary_return .wint 0
cold_primary_feed .wint 0
cold_primary_return .wint 0
cold_secondary_feed .wint 0
cold_secondary_return .wint 0
gasNatural .wint 0
elec .wint 0
wastewater .wint 0
waste_organic .wint 0
water .wint 0
waterPotable .wint 0
water_pure .wint 0
rain .wint 0
waste .wint 0
gasoline .wint 0
CO2 .wint 0
algaeDry .wint 0
ash .wint 0
biodiesel .wint 0
biomassAgriWaste .wint 0
biomass .wint 0
biooil .wint 0
butanol .wint 0
coal .wint 0
coke .wint 0
diesel .wint 0
digestate .wint 0
DME .wint 0
ethanol .wint 0
fertilizer .wint 0
foodWaste .wint 0
fuelOil .wint 0
gasLandfill .wint 0
groundWater .wint 0
hydrogen .wint 0
liquidFuel .wint 0
LPG .wint 0
manure .wint 0
metal .wint 0
methane .wint 0
methanol .wint 0
MSW .wint 0
nuclearFuelSpent .wint 0
oilUsed .wint 0
recyclables .wint 0
slag .wint 0
sludge .wint 0
uranium .wint 0
vegWaste .wint 0
waterNonPotable .wint 0
wood .wint 0
algae .wint 0
biogas .wint 0
CNG .wint 0
fuel .wint 0
leachate .wint 0
ozone .wint 0
propane .wint 0
seawater .wint 0
solar .wint 0
waterBrackish .wint 0
waterIrrigation .wint 0
wind .wint 0
heat .sum 0
cool .sum 0
hot_primary_feed .sum 0
hot_primary_return .sum 0
hot_secondary_feed .sum 0
hot_secondary_return .sum 0
cold_primary_feed .sum 0
cold_primary_return .sum 0
cold_secondary_feed .sum 0
cold_secondary_return .sum 0
gasNatural .sum 0
elec .sum 0
wastewater .sum 0
waste_organic .sum 0
water .sum 0
waterPotable .sum 0
water_pure .sum 0
rain .sum 0
waste .sum 0
gasoline .sum 0
CO2 .sum 0
algaeDry .sum 0
ash .sum 0
biodiesel .sum 0
biomassAgriWaste .sum 0
biomass .sum 0
biooil .sum 0
butanol .sum 0
coal .sum 0
coke .sum 0
diesel .sum 0
digestate .sum 0
DME .sum 0
ethanol .sum 0
fertilizer .sum 0
foodWaste .sum 0
fuelOil .sum 0
gasLandfill .sum 0
groundWater .sum 0
hydrogen .sum 0
liquidFuel .sum 0
LPG .sum 0
manure .sum 0
metal .sum 0
methane .sum 0
methanol .sum 0
MSW .sum 0
nuclearFuelSpent .sum 0
oilUsed .sum 0
recyclables .sum 0
slag .sum 0
sludge .sum 0
uranium .sum 0
vegWaste .sum 0
waterNonPotable .sum 0
wood .sum 0
algae .sum 0
biogas .sum 0
CNG .sum 0
fuel .sum 0
leachate .sum 0
ozone .sum 0
propane .sum 0
seawater .sum 0
solar .sum 0
waterBrackish .sum 0
waterIrrigation .sum 0
wind .sum 0
heat .shoulder 0
cool .shoulder 0
hot_primary_feed .shoulder 0
hot_primary_return .shoulder 0
hot_secondary_feed .shoulder 0
hot_secondary_return .shoulder 0
cold_primary_feed .shoulder 0
cold_primary_return .shoulder 0
cold_secondary_feed .shoulder 0
cold_secondary_return .shoulder 0
gasNatural .shoulder 0
elec .shoulder 0
wastewater .shoulder 0
waste_organic .shoulder 0
water .shoulder 0
waterPotable .shoulder 0
water_pure .shoulder 0
rain .shoulder 0
waste .shoulder 0
gasoline .shoulder 0
CO2 .shoulder 0
algaeDry .shoulder 0
ash .shoulder 0
biodiesel .shoulder 0
biomassAgriWaste .shoulder 0
biomass .shoulder 0
biooil .shoulder 0
butanol .shoulder 0
coal .shoulder 0
coke .shoulder 0
diesel .shoulder 0
digestate .shoulder 0
DME .shoulder 0
ethanol .shoulder 0
fertilizer .shoulder 0
foodWaste .shoulder 0
fuelOil .shoulder 0
gasLandfill .shoulder 0
groundWater .shoulder 0
hydrogen .shoulder 0
liquidFuel .shoulder 0
LPG .shoulder 0
manure .shoulder 0
metal .shoulder 0
methane .shoulder 0
methanol .shoulder 0
MSW .shoulder 0
nuclearFuelSpent .shoulder 0
oilUsed .shoulder 0
recyclables .shoulder 0
slag .shoulder 0
sludge .shoulder 0
uranium .shoulder 0
vegWaste .shoulder 0
waterNonPotable .shoulder 0
wood .shoulder 0
algae .shoulder 0
biogas .shoulder 0
CNG .shoulder 0
fuel .shoulder 0
leachate .shoulder 0
ozone .shoulder 0
propane .shoulder 0
seawater .shoulder 0
solar .shoulder 0
waterBrackish .shoulder 0
waterIrrigation .shoulder 0
wind .shoulder 0
/; 
PARAMETER
imports_max(R,T)
/
heat .wint 0
cool .wint 0
hot_primary_feed .wint 0
hot_primary_return .wint 0
hot_secondary_feed .wint 0
hot_secondary_return .wint 0
cold_primary_feed .wint 0
cold_primary_return .wint 0
cold_secondary_feed .wint 0
cold_secondary_return .wint 0
gasNatural .wint 100
elec .wint 100
wastewater .wint 0
waste_organic .wint 0
water .wint 100
waterPotable .wint 0
water_pure .wint 0
rain .wint 0
waste .wint 0
gasoline .wint 100
CO2 .wint 0
algaeDry .wint 100
ash .wint 100
biodiesel .wint 100
biomassAgriWaste .wint 100
biomass .wint 100
biooil .wint 100
butanol .wint 100
coal .wint 100
coke .wint 100
diesel .wint 100
digestate .wint 100
DME .wint 100
ethanol .wint 100
fertilizer .wint 100
foodWaste .wint 100
fuelOil .wint 100
gasLandfill .wint 0
groundWater .wint 100
hydrogen .wint 0
liquidFuel .wint 100
LPG .wint 100
manure .wint 100
metal .wint 100
methane .wint 100
methanol .wint 100
MSW .wint 0
nuclearFuelSpent .wint 100
oilUsed .wint 100
recyclables .wint 100
slag .wint 100
sludge .wint 0
uranium .wint 100
vegWaste .wint 100
waterNonPotable .wint 100
wood .wint 100
algae .wint 0
biogas .wint 0
CNG .wint 0
fuel .wint 0
leachate .wint 0
ozone .wint 0
propane .wint 0
seawater .wint 0
solar .wint 0
waterBrackish .wint 0
waterIrrigation .wint 0
wind .wint 0
heat .sum 0
cool .sum 0
hot_primary_feed .sum 0
hot_primary_return .sum 0
hot_secondary_feed .sum 0
hot_secondary_return .sum 0
cold_primary_feed .sum 0
cold_primary_return .sum 0
cold_secondary_feed .sum 0
cold_secondary_return .sum 0
gasNatural .sum 100
elec .sum 100
wastewater .sum 0
waste_organic .sum 0
water .sum 100
waterPotable .sum 0
water_pure .sum 0
rain .sum 0
waste .sum 0
gasoline .sum 100
CO2 .sum 0
algaeDry .sum 100
ash .sum 100
biodiesel .sum 100
biomassAgriWaste .sum 100
biomass .sum 100
biooil .sum 100
butanol .sum 100
coal .sum 100
coke .sum 100
diesel .sum 100
digestate .sum 100
DME .sum 100
ethanol .sum 100
fertilizer .sum 100
foodWaste .sum 100
fuelOil .sum 100
gasLandfill .sum 0
groundWater .sum 100
hydrogen .sum 0
liquidFuel .sum 100
LPG .sum 100
manure .sum 100
metal .sum 100
methane .sum 100
methanol .sum 100
MSW .sum 0
nuclearFuelSpent .sum 100
oilUsed .sum 100
recyclables .sum 100
slag .sum 100
sludge .sum 0
uranium .sum 100
vegWaste .sum 100
waterNonPotable .sum 100
wood .sum 100
algae .sum 0
biogas .sum 0
CNG .sum 0
fuel .sum 0
leachate .sum 0
ozone .sum 0
propane .sum 0
seawater .sum 0
solar .sum 0
waterBrackish .sum 0
waterIrrigation .sum 0
wind .sum 0
heat .shoulder 0
cool .shoulder 0
hot_primary_feed .shoulder 0
hot_primary_return .shoulder 0
hot_secondary_feed .shoulder 0
hot_secondary_return .shoulder 0
cold_primary_feed .shoulder 0
cold_primary_return .shoulder 0
cold_secondary_feed .shoulder 0
cold_secondary_return .shoulder 0
gasNatural .shoulder 100
elec .shoulder 100
wastewater .shoulder 0
waste_organic .shoulder 0
water .shoulder 100
waterPotable .shoulder 0
water_pure .shoulder 0
rain .shoulder 0
waste .shoulder 0
gasoline .shoulder 100
CO2 .shoulder 0
algaeDry .shoulder 100
ash .shoulder 100
biodiesel .shoulder 100
biomassAgriWaste .shoulder 100
biomass .shoulder 100
biooil .shoulder 100
butanol .shoulder 100
coal .shoulder 100
coke .shoulder 100
diesel .shoulder 100
digestate .shoulder 100
DME .shoulder 100
ethanol .shoulder 100
fertilizer .shoulder 100
foodWaste .shoulder 100
fuelOil .shoulder 100
gasLandfill .shoulder 0
groundWater .shoulder 100
hydrogen .shoulder 0
liquidFuel .shoulder 100
LPG .shoulder 100
manure .shoulder 100
metal .shoulder 100
methane .shoulder 100
methanol .shoulder 100
MSW .shoulder 0
nuclearFuelSpent .shoulder 100
oilUsed .shoulder 100
recyclables .shoulder 100
slag .shoulder 100
sludge .shoulder 0
uranium .shoulder 100
vegWaste .shoulder 100
waterNonPotable .shoulder 100
wood .shoulder 100
algae .shoulder 0
biogas .shoulder 0
CNG .shoulder 0
fuel .shoulder 0
leachate .shoulder 0
ozone .shoulder 0
propane .shoulder 0
seawater .shoulder 0
solar .shoulder 0
waterBrackish .shoulder 0
waterIrrigation .shoulder 0
wind .shoulder 0
/; 
PARAMETER
exports_min(R,T)
/
heat .wint 0
cool .wint 0
hot_primary_feed .wint 0
hot_primary_return .wint 0
hot_secondary_feed .wint 0
hot_secondary_return .wint 0
cold_primary_feed .wint 0
cold_primary_return .wint 0
cold_secondary_feed .wint 0
cold_secondary_return .wint 0
gasNatural .wint 0
elec .wint 0
wastewater .wint 0
waste_organic .wint 0
water .wint 0
waterPotable .wint 0
water_pure .wint 0
rain .wint 0
waste .wint 0
gasoline .wint 0
CO2 .wint 0
algaeDry .wint 0
ash .wint 0
biodiesel .wint 0
biomassAgriWaste .wint 0
biomass .wint 0
biooil .wint 0
butanol .wint 0
coal .wint 0
coke .wint 0
diesel .wint 0
digestate .wint 0
DME .wint 0
ethanol .wint 0
fertilizer .wint 0
foodWaste .wint 0
fuelOil .wint 0
gasLandfill .wint 0
groundWater .wint 0
hydrogen .wint 0
liquidFuel .wint 0
LPG .wint 0
manure .wint 0
metal .wint 0
methane .wint 0
methanol .wint 0
MSW .wint 0
nuclearFuelSpent .wint 0
oilUsed .wint 0
recyclables .wint 0
slag .wint 0
sludge .wint 0
uranium .wint 0
vegWaste .wint 0
waterNonPotable .wint 0
wood .wint 0
algae .wint 0
biogas .wint 0
CNG .wint 0
fuel .wint 0
leachate .wint 0
ozone .wint 0
propane .wint 0
seawater .wint 0
solar .wint 0
waterBrackish .wint 0
waterIrrigation .wint 0
wind .wint 0
heat .sum 0
cool .sum 0
hot_primary_feed .sum 0
hot_primary_return .sum 0
hot_secondary_feed .sum 0
hot_secondary_return .sum 0
cold_primary_feed .sum 0
cold_primary_return .sum 0
cold_secondary_feed .sum 0
cold_secondary_return .sum 0
gasNatural .sum 0
elec .sum 0
wastewater .sum 0
waste_organic .sum 0
water .sum 0
waterPotable .sum 0
water_pure .sum 0
rain .sum 0
waste .sum 0
gasoline .sum 0
CO2 .sum 0
algaeDry .sum 0
ash .sum 0
biodiesel .sum 0
biomassAgriWaste .sum 0
biomass .sum 0
biooil .sum 0
butanol .sum 0
coal .sum 0
coke .sum 0
diesel .sum 0
digestate .sum 0
DME .sum 0
ethanol .sum 0
fertilizer .sum 0
foodWaste .sum 0
fuelOil .sum 0
gasLandfill .sum 0
groundWater .sum 0
hydrogen .sum 0
liquidFuel .sum 0
LPG .sum 0
manure .sum 0
metal .sum 0
methane .sum 0
methanol .sum 0
MSW .sum 0
nuclearFuelSpent .sum 0
oilUsed .sum 0
recyclables .sum 0
slag .sum 0
sludge .sum 0
uranium .sum 0
vegWaste .sum 0
waterNonPotable .sum 0
wood .sum 0
algae .sum 0
biogas .sum 0
CNG .sum 0
fuel .sum 0
leachate .sum 0
ozone .sum 0
propane .sum 0
seawater .sum 0
solar .sum 0
waterBrackish .sum 0
waterIrrigation .sum 0
wind .sum 0
heat .shoulder 0
cool .shoulder 0
hot_primary_feed .shoulder 0
hot_primary_return .shoulder 0
hot_secondary_feed .shoulder 0
hot_secondary_return .shoulder 0
cold_primary_feed .shoulder 0
cold_primary_return .shoulder 0
cold_secondary_feed .shoulder 0
cold_secondary_return .shoulder 0
gasNatural .shoulder 0
elec .shoulder 0
wastewater .shoulder 0
waste_organic .shoulder 0
water .shoulder 0
waterPotable .shoulder 0
water_pure .shoulder 0
rain .shoulder 0
waste .shoulder 0
gasoline .shoulder 0
CO2 .shoulder 0
algaeDry .shoulder 0
ash .shoulder 0
biodiesel .shoulder 0
biomassAgriWaste .shoulder 0
biomass .shoulder 0
biooil .shoulder 0
butanol .shoulder 0
coal .shoulder 0
coke .shoulder 0
diesel .shoulder 0
digestate .shoulder 0
DME .shoulder 0
ethanol .shoulder 0
fertilizer .shoulder 0
foodWaste .shoulder 0
fuelOil .shoulder 0
gasLandfill .shoulder 0
groundWater .shoulder 0
hydrogen .shoulder 0
liquidFuel .shoulder 0
LPG .shoulder 0
manure .shoulder 0
metal .shoulder 0
methane .shoulder 0
methanol .shoulder 0
MSW .shoulder 0
nuclearFuelSpent .shoulder 0
oilUsed .shoulder 0
recyclables .shoulder 0
slag .shoulder 0
sludge .shoulder 0
uranium .shoulder 0
vegWaste .shoulder 0
waterNonPotable .shoulder 0
wood .shoulder 0
algae .shoulder 0
biogas .shoulder 0
CNG .shoulder 0
fuel .shoulder 0
leachate .shoulder 0
ozone .shoulder 0
propane .shoulder 0
seawater .shoulder 0
solar .shoulder 0
waterBrackish .shoulder 0
waterIrrigation .shoulder 0
wind .shoulder 0
/; 
PARAMETER
exports_max(R,T)
/
heat .wint 1000
cool .wint 1000
hot_primary_feed .wint 1000
hot_primary_return .wint 1000
hot_secondary_feed .wint 1000
hot_secondary_return .wint 1000
cold_primary_feed .wint 1000
cold_primary_return .wint 1000
cold_secondary_feed .wint 1000
cold_secondary_return .wint 1000
gasNatural .wint 1000
elec .wint 1000
wastewater .wint 1000
waste_organic .wint 1000
water .wint 1000
waterPotable .wint 1000
water_pure .wint 1000
rain .wint 1000
waste .wint 1000
gasoline .wint 1000
CO2 .wint 1000
algaeDry .wint 1000
ash .wint 1000
biodiesel .wint 1000
biomassAgriWaste .wint 1000
biomass .wint 1000
biooil .wint 1000
butanol .wint 1000
coal .wint 1000
coke .wint 1000
diesel .wint 1000
digestate .wint 1000
DME .wint 1000
ethanol .wint 1000
fertilizer .wint 1000
foodWaste .wint 1000
fuelOil .wint 1000
gasLandfill .wint 1000
groundWater .wint 1000
hydrogen .wint 1000
liquidFuel .wint 1000
LPG .wint 1000
manure .wint 1000
metal .wint 1000
methane .wint 1000
methanol .wint 1000
MSW .wint 1000
nuclearFuelSpent .wint 1000
oilUsed .wint 1000
recyclables .wint 1000
slag .wint 1000
sludge .wint 1000
uranium .wint 1000
vegWaste .wint 1000
waterNonPotable .wint 1000
wood .wint 1000
algae .wint 0
biogas .wint 0
CNG .wint 0
fuel .wint 0
leachate .wint 0
ozone .wint 0
propane .wint 0
seawater .wint 0
solar .wint 0
waterBrackish .wint 0
waterIrrigation .wint 0
wind .wint 0
heat .sum 1000
cool .sum 1000
hot_primary_feed .sum 1000
hot_primary_return .sum 1000
hot_secondary_feed .sum 1000
hot_secondary_return .sum 1000
cold_primary_feed .sum 1000
cold_primary_return .sum 1000
cold_secondary_feed .sum 1000
cold_secondary_return .sum 1000
gasNatural .sum 1000
elec .sum 1000
wastewater .sum 1000
waste_organic .sum 1000
water .sum 1000
waterPotable .sum 1000
water_pure .sum 1000
rain .sum 1000
waste .sum 1000
gasoline .sum 1000
CO2 .sum 1000
algaeDry .sum 1000
ash .sum 1000
biodiesel .sum 1000
biomassAgriWaste .sum 1000
biomass .sum 1000
biooil .sum 1000
butanol .sum 1000
coal .sum 1000
coke .sum 1000
diesel .sum 1000
digestate .sum 1000
DME .sum 1000
ethanol .sum 1000
fertilizer .sum 1000
foodWaste .sum 1000
fuelOil .sum 1000
gasLandfill .sum 1000
groundWater .sum 1000
hydrogen .sum 1000
liquidFuel .sum 1000
LPG .sum 1000
manure .sum 1000
metal .sum 1000
methane .sum 1000
methanol .sum 1000
MSW .sum 1000
nuclearFuelSpent .sum 1000
oilUsed .sum 1000
recyclables .sum 1000
slag .sum 1000
sludge .sum 1000
uranium .sum 1000
vegWaste .sum 1000
waterNonPotable .sum 1000
wood .sum 1000
algae .sum 0
biogas .sum 0
CNG .sum 0
fuel .sum 0
leachate .sum 0
ozone .sum 0
propane .sum 0
seawater .sum 0
solar .sum 0
waterBrackish .sum 0
waterIrrigation .sum 0
wind .sum 0
heat .shoulder 1000
cool .shoulder 1000
hot_primary_feed .shoulder 1000
hot_primary_return .shoulder 1000
hot_secondary_feed .shoulder 1000
hot_secondary_return .shoulder 1000
cold_primary_feed .shoulder 1000
cold_primary_return .shoulder 1000
cold_secondary_feed .shoulder 1000
cold_secondary_return .shoulder 1000
gasNatural .shoulder 1000
elec .shoulder 1000
wastewater .shoulder 1000
waste_organic .shoulder 1000
water .shoulder 1000
waterPotable .shoulder 1000
water_pure .shoulder 1000
rain .shoulder 1000
waste .shoulder 1000
gasoline .shoulder 1000
CO2 .shoulder 1000
algaeDry .shoulder 1000
ash .shoulder 1000
biodiesel .shoulder 1000
biomassAgriWaste .shoulder 1000
biomass .shoulder 1000
biooil .shoulder 1000
butanol .shoulder 1000
coal .shoulder 1000
coke .shoulder 1000
diesel .shoulder 1000
digestate .shoulder 1000
DME .shoulder 1000
ethanol .shoulder 1000
fertilizer .shoulder 1000
foodWaste .shoulder 1000
fuelOil .shoulder 1000
gasLandfill .shoulder 1000
groundWater .shoulder 1000
hydrogen .shoulder 1000
liquidFuel .shoulder 1000
LPG .shoulder 1000
manure .shoulder 1000
metal .shoulder 1000
methane .shoulder 1000
methanol .shoulder 1000
MSW .shoulder 1000
nuclearFuelSpent .shoulder 1000
oilUsed .shoulder 1000
recyclables .shoulder 1000
slag .shoulder 1000
sludge .shoulder 1000
uranium .shoulder 1000
vegWaste .shoulder 1000
waterNonPotable .shoulder 1000
wood .shoulder 1000
algae .shoulder 0
biogas .shoulder 0
CNG .shoulder 0
fuel .shoulder 0
leachate .shoulder 0
ozone .shoulder 0
propane .shoulder 0
seawater .shoulder 0
solar .shoulder 0
waterBrackish .shoulder 0
waterIrrigation .shoulder 0
wind .shoulder 0
/; 
PARAMETER
num_zones_imports(R)
/
heat 0
cool 0
hot_primary_feed 0
hot_primary_return 0
hot_secondary_feed 0
hot_secondary_return 0
cold_primary_feed 0
cold_primary_return 0
cold_secondary_feed 0
cold_secondary_return 0
gasNatural 1
elec 1
wastewater 0
waste_organic 0
water 1
waterPotable 0
water_pure 0
rain 0
waste 0
gasoline 1
CO2 0
algaeDry 1
ash 1
biodiesel 1
biomassAgriWaste 1
biomass 1
biooil 1
butanol 1
coal 1
coke 1
diesel 1
digestate 1
DME 1
ethanol 1
fertilizer 1
foodWaste 1
fuelOil 1
gasLandfill 1
groundWater 1
hydrogen 1
liquidFuel 1
LPG 1
manure 1
metal 1
methane 1
methanol 1
MSW 1
nuclearFuelSpent 1
oilUsed 1
recyclables 1
slag 1
sludge 1
uranium 1
vegWaste 1
waterNonPotable 1
wood 1
algae 0
biogas 0
CNG 0
fuel 0
leachate 0
ozone 0
propane 0
seawater 0
solar 0
waterBrackish 0
waterIrrigation 0
wind 0
/;
PARAMETER
num_zones_exports(R)
/
heat 13
cool 13
hot_primary_feed 13
hot_primary_return 13
hot_secondary_feed 13
hot_secondary_return 13
cold_primary_feed 13
cold_primary_return 13
cold_secondary_feed 13
cold_secondary_return 13
gasNatural 13
elec 13
wastewater 13
waste_organic 13
water 13
waterPotable 13
water_pure 13
rain 13
waste 13
gasoline 13
CO2 13
algaeDry 13
ash 13
biodiesel 13
biomassAgriWaste 13
biomass 13
biooil 13
butanol 13
coal 13
coke 13
diesel 13
digestate 13
DME 13
ethanol 13
fertilizer 13
foodWaste 13
fuelOil 13
gasLandfill 13
groundWater 13
hydrogen 13
liquidFuel 13
LPG 13
manure 13
metal 13
methane 13
methanol 13
MSW 13
nuclearFuelSpent 13
oilUsed 13
recyclables 13
slag 13
sludge 13
uranium 13
vegWaste 13
waterNonPotable 13
wood 13
algae 0
biogas 0
CNG 0
fuel 0
leachate 0
ozone 0
propane 0
seawater 0
solar 0
waterBrackish 0
waterIrrigation 0
wind 0
/;
PARAMETER
cost_resource(R)
/
heat 0
cool 0
hot_primary_feed 0
hot_primary_return 0
hot_secondary_feed 0
hot_secondary_return 0
cold_primary_feed 0
cold_primary_return 0
cold_secondary_feed 0
cold_secondary_return 0
gasNatural 0.78
elec 0.028
wastewater 0
waste_organic 0
water 3e-04
waterPotable 0
water_pure 0
rain 0
waste 0
gasoline 0.98
CO2 0
algaeDry 0
ash 0
biodiesel 0.71
biomassAgriWaste 0
biomass 0.17
biooil 0.23
butanol 0.23
coal 0.05
coke 0.157
diesel 0.67
digestate 0
DME 0.24
ethanol 0.49
fertilizer 0.55
foodWaste 0
fuelOil 0.59
gasLandfill 0
groundWater 0
hydrogen 3.1
liquidFuel 0.98
LPG 1
manure 0
metal 0
methane 0.78
methanol 0.25
MSW 0
nuclearFuelSpent 0
oilUsed 0
recyclables 0
slag 0
sludge 0
uranium 77.78
vegWaste 0
waterNonPotable 0
wood 0.166
algae 0
biogas 0
CNG 0
fuel 0
leachate 0
ozone 0
propane 0
seawater 0
solar 0
waterBrackish 0
waterIrrigation 0
wind 0
/;
PARAMETER
emissions_resource(R)
/
heat 0.6077173688
cool 0.9222645951
hot_primary_feed 0.8911855537
hot_primary_return 0.1109193994
hot_secondary_feed 0.801170113
hot_secondary_return 0.6286372847
cold_primary_feed 0.4165789688
cold_primary_return 0.280425922
cold_secondary_feed 0.174941093
cold_secondary_return 0.3764860397
gasNatural 0.3876714087
elec 0.4644957075
wastewater 0.4459190248
waste_organic 0.2853973417
water 0.5464939508
waterPotable 0.0370612224
water_pure 0.6742411433
rain 0.2344462324
waste 0.1117896924
gasoline 0.8472327783
CO2 0.7238466528
algaeDry 0.2422946212
ash 0.6185664386
biodiesel 0.4254488079
biomassAgriWaste 0.9455941035
biomass 0.1161105859
biooil 0.3682020796
butanol 0.5234634329
coal 0.541428895
coke 0.4446773969
diesel 0.5613121544
digestate 0.3504607631
DME 0.069425296
ethanol 0.4680810892
fertilizer 0.9906770883
foodWaste 0.091214471
fuelOil 0.8662637174
gasLandfill 0.6156138235
groundWater 0.5458138282
hydrogen 0.1932584727
liquidFuel 0.1422161746
LPG 0.1918046612
manure 0.4189816955
metal 0.1687370443
methane 0.6385266066
methanol 0.0347816807
MSW 0.3500893256
nuclearFuelSpent 0.1233654625
oilUsed 0.0923245861
recyclables 0.0820741048
slag 0.9629435248
sludge 0.7289460257
uranium 0.2333657686
vegWaste 0.5918931197
waterNonPotable 0.7308208274
wood 0.2408265451
algae 0
biogas 0
CNG 0
fuel 0
leachate 0
ozone 0
propane 0
seawater 0
solar 0
waterBrackish 0
waterIrrigation 0
wind 0
/;
PARAMETER
cost_process_cap(P)
/
activated-sludge-l 1134558.0576
activated-sludge-ozone-l 1134558.0576
activated-sludge-ozone-s 661.97952
activated-sludge-s 661.97952
airCon_central 1202.875
airCon_split 1202.875
algae-cultivation-l 163482.624
algae-cultivation-s 0.163482624
algae-production-pond-l 163482.624
algae-production-pond-s 0.163482624
anaerobic-digester-annamox-l 2086
anaerobic-digester-annamox-s 89625.312
anaerobicDigestion_sludge-l 25149054
anaerobicDigestion_sludge_manure-l 89625.312
anaerobicDigestion_sludge_manure-s 25149054
anaerobicDigestion_sludge-s 89625.312
anaerobicDigestion_sludge_usedOil-l 25149054
anaerobicDigestion_sludge_usedOil-s 89625.312
anaerobicDigestion_wastewater-l 7778400
anaerobicDigestion_wastewater-s 89625.312
anaerobicFermentation 5865309684
biochemical_cornStover_ethanol-l 281174118.2208
biochemical_cornStover_ethanol-s 159433.843104
biochemical_wastePaper_ethanol-l 301447143.0432
biochemical_wastePaper_ethanol-s 159197.165424
biochemical_wheatStraw_ethanol-l 238391585.9136
biochemical_wheatStraw_ethanol-s 158997.069504
biochemical_woodChips_ethanol-l 277831668.0384
biochemical_woodChips_ethanol-s 159020.91072
biodiesel_boiler-l 123648
biodiesel_boiler-s 8612.5
biodiesel-cookingOil-l 675771.428571426
biodiesel-cookingOil-s 434746.285714286
biogas-CHP-l 1.8e+08
biogas-CHP-s 825000
biogas-MSW-agri-l 16903587.708
biogas-MSW-agri-s 1287630.648
biogas-MSW-l 16903587.708
biogas-MSW-sewage-combo-l 16903587.708
biogas-MSW-sewage-combo-s 1287630.648
biogas-MSW-s 1287630.648
biogas-UPGRADE-methane-AwR-l 773776.363636363
biogas-UPGRADE-methane-AwR-s 4020872.72727272
biogas-UPGRADE-methane-BABIU-l 773776.363636363
biogas-UPGRADE-methane-BABIU-s 4020872.72727272
biogas-UPGRADE-methane-HPWS-l 773776.363636363
biogas-UPGRADE-methane-HPWS-s 4020872.72727272
biogas-vegWaste-l 4908666.3066
biogas-vegWaste-s 6174543.816
biomass_biogas-biodiesel 1617953.53392
biomass_ethanol-l 35142021.92088
biomass_ethanol-s 3350693.763756
biomass-gasification-l 7.8e+07
biomass-gasification-s 105000
biomass-pyrolysis-l 8108263.10796009
biomass-pyrolysis-s 112325072.625
biomass-to-DME 114460225.7832
boiler_domestic 2362.5
boiler_gas 52920000
boilerRoom 578694.750000003
centralCooling 1202.875
centralHeating 3608.625
CHP-biomass-l 214939.5
CHP-biomass-s 1074.6975
CHP-decentralised-fuelCell_biomass-l 7500000
CHP-decentralised-fuelCell_biomass-s 16250
CHP-gas_fuelOil-l 1.8e+08
CHP-gas_fuelOil-s 825000
CHP-gas_gasNatural-l 1.8e+08
CHP-gas_gasNatural-s 825000
CHP-microTurbine_gasNatural-l 1250000
CHP-microTurbine_gasNatural-s 64500
CHP-microTurbine_liquidFuel-l 1250000
CHP-microTurbine_liquidFuel-s 64500
CHP-reciprocatingEngine_gasNatural-l 7500000
CHP-reciprocatingEngine_gasNatural-s 7250
CHP-reciprocatingEngine_LPG-l 7500000
CHP-reciprocatingEngine_LPG-s 7250
CHP-reciprocatingEngine_wasteGas-l 7500000
CHP-reciprocatingEngine_wasteGas-s 7250
CHP-steam-large_biogas 167500000
CHP-steam-large_fuelOil 167500000
CHP-steam-large_gasNatural 167500000
CHP-steam-large_hydrogen 167500000
CHP-steam-large_liquidFuel 167500000
CHP-steam-large_LPG 167500000
CHP-steam-large_methanol 167500000
CHP-steam-large_propane 167500000
CHP-steam-large_wasteGas 167500000
CHP-steam-small_biogas 275000
CHP-steam-small_fuelOil 275000
CHP-steam-small_gasNatural 275000
CHP-steam-small_liquidFuel_hydrogen 275000
CHP-steam-small_liquidFuel 275000
CHP-steam-small_LPG 275000
CHP-steam-small_methanol 275000
CHP-steam-small_propane 275000
CHP-steam-small_wasteGas 275000
CHP 7500000
coal-combustion-bituminous-l 254275000
coal-combustion-bituminous-s 14515950
cofiring-biomass-coal-l 2.4e+09
cofiring-biomass-coal-s 2827500000
cofiring-boiler_coal-biomass-l 5.25e+08
cofiring-boiler_coal-biomass-s 2.5e+07
combustion-biomass-l 5.25e+08
combustion-biomass-s 17400000
combustion-coal-combined-cycle-l 1743600000
combustion-coal-combined-cycle-s 667400000
combustion-coal-l 1743600000
combustion-coal-s 667400000
combustion-sludgeDigested-l 1421100
combustion-sludgeDigested-s 18700
combustion-sludgeRaw-l 1421100
combustion-sludgeRaw-s 18700
constructed-wetland-irrigation-l 1725496.16908851
constructed-wetland-irrigation-s 88555.8626155881
constructed-wetland-nonPotable-l 1725496.16908851
constructed-wetland-nonPotable-s 88555.8626155881
conventionalAirConditioning 1904.4555
cooling-evaporative-cooling 0.1971
cooling-evaporative-heating 2068.53
cooling-thermallyActivated_adsorption-activatedCarbon 4873.5
cooling-thermallyActivated_adsorption-silica-l 182500
cooling-thermallyActivated_adsorption-silica-s 2707.5
cooling-thermallyActivated_H2O-NH3_double 59565
cooling-thermallyActivated_H2O-NH3_single-l 1186250
cooling-thermallyActivated_H2O-NH3_single-small-l 5415
cooling-thermallyActivated_H2O-NH3_single-small-s 16425
cooling-thermallyActivated_H2O-NH3_single-s 5415
cooling-thermallyActivated_LiBr-H2O_double-l 2122475
cooling-thermallyActivated_LiBr-H2O_double-s 10830
cooling-thermallyActivated_LiBr-H2O_single-l 1277500
cooling-thermallyActivated_LiBr-H2O_single-s 2707.5
cooling-thermallyActivated_liquidDessicant-l 91250
cooling-thermallyActivated_liquidDessicant-s 27075
cooling-thermallyActivated_solidDessicant-l 9125
cooling-thermallyActivated_solidDessicant-s 2707.5
desalination-multiEffectDistillation-l 587199983.5584
desalination-multiEffectDistillation-s 284998.176
desalination-multiStageFlash-l 1919999946.24
desalination-multiStageFlash-s 1519190.27712
desalination-photovoltaicModules 143990784
desalination-ReverseOsmosis-l 381359989.32192
desalination-ReverseOsmosis-PV-l 106.38571104
desalination-ReverseOsmosis-PV-s 1278.16704
desalination-ReverseOsmosis-s 200998.7136
desalination-solarPond-l 7199539.2
desalination-solarPond-s 17457.43104
digestion_biomassAgriWaste_biodiesel-l 62239474.51344
digestion_biomassAgriWaste_biodiesel-s 41428552.91112
distributed-engine-cogen-l 334500
distributed-engine-cogen-s 111500
distributed-engine-l 334500
distributed-engine-s 111500
distributed-gas-turbine-micro-cogen-l 133800
distributed-gas-turbine-micro-cogen-s 10035
distributed-gas-turbine-micro-l 133800
distributed-gas-turbine-micro-s 10035
distributed-solar-l 3388500
distributed-solar-s 1694250
distributed-wind-l 2232
distributed-wind-s 372
district-cogen-absorptionChiller 162936000
district-cogen-heating 374752800
elecplant-biomass-l 8718000
elecplant-biomass-s 16685000
elecplant-coal-l 1.11e+09
elecplant-coal-s 80000
elecplant-cofiring-biomass-coal-fluidisedBed-l 3923100000
elecplant-cofiring-biomass-coal-fluidisedBed-s 16685000
elecplant_hydrogenLooping-l 1.65e+09
elecplant_hydrogenLooping-s 2.5e+07
fossilHydrogen_intrinsicCO2capture 14422.2
gasif-bmass-methanol-condensingTurbine-hPump-twoSteamLevels-l 64755360
gasif-bmass-methanol-condensingTurbine-hPump-twoSteamLevels-s 1204320
gasif-bmass-methanol-condensingTurbine-noDrying-adj-l 64931874
gasif-bmass-methanol-condensingTurbine-noDrying-adj-s 1202541.75
gasification-MSW-elec-l 4.8e+07
gasification-MSW-elec-s 37500000
gasification_sludge_hydrogen-l 4620000
gasification_sludge_hydrogen-s 465000
gasification_sludge-l 1710000
gasification_sludge-s 465000
gasification-waste-high-temp-l 7212000
gasification-waste-high-temp_steam-l 30000
gasification-waste-high-temp_steam-s 5172000
gasification-waste-high-temp-s 30000
gasification-waste-plama-ICE-steam-CC-l 6078000
gasification-waste-plama-ICE-steam-CC-s 5940000
groundWater-pumping-ShannGu 2.592
heatEx_cold 0
heatEx_hot 0
heatingPlant-pyrolysis_biomass-oil 837539.67761194
heatPump-ASHP-highEff-radOrDHW-l 3133000
heatPump-ASHP-highEff-radOrDHW-s 27047.5
heatPump-ASHP-highEff-screedFloor-l 3133000
heatPump-ASHP-highEff-screedFloor-s 27047.5
heatPump-ASHP-highEff-timberFloor-l 3133000
heatPump-ASHP-highEff-timberFloor-s 27047.5
heatPump-ASHP-screedFloor-l 3133000
heatPump-ASHP-screedFloor-s 27047.5
heatPump-ASHP-twoStage-screedFloor-l 3133000
heatPump-ASHP-twoStage-screedFloor-s 27047.5
heatPump-ASHP-twoStage-timberFloor-l 3133000
heatPump-ASHP-twoStage-timberFloor-s 27047.5
heatPump-groundCoupled-heating-l 3133000
heatPump-groundCoupled-heating-s 27047.5
heatPump_ground 12210000
heatPump-GSHP-ground-radAndDHW-l 5843500
heatPump-GSHP-ground-radAndDHW-s 10175
heatPump-GSHP-ground-radOrDHW-l 5843500
heatPump-GSHP-ground-radOrDHW-s 10175
heatPump-GSHP-ground-screedFloor-l 5843500
heatPump-GSHP-ground-screedFloor-s 10175
heatPump-GSHP-ground-timberFloor-l 5843500
heatPump-GSHP-ground-timberFloor-s 10175
heatPump-GSHP-radOrDHW-l 5843500
heatPump-GSHP-radOrDHW-s 10175
heatPump-GSHP-screedFloor-l 5843500
heatPump-GSHP-screedFloor-s 10175
heatPump-GSHP-timberFloor-l 5843500
heatPump-GSHP-timberFloor-s 10175
heatPump-sewage-cooling-l 48389250
heatPump-sewage-cooling-s 18611.25
heatPump-sewage-heating-l 48389250
heatPump-sewage-heating-s 18611.25
heatPump-solarAssisted-cooling 2410
heatPump-solarAssisted-heating 54095
heatPump-transcriticalCO2-radAndDHW-l 5843500
heatPump-transcriticalCO2-radAndDHW-s 10175
heatPump-transcriticalCO2-radOrDHW-l 5843500
heatPump-transcriticalCO2-radOrDHW-s 10175
heatPump-transcriticalCO2-screedFloor-l 5843500
heatPump-transcriticalCO2-screedFloor-s 10175
heatPump_water 22333500
leachateTreatment_anaerobicMembraneBioreactor 46942755.12
leachateTreatment-electrodyalysis 70414132.68
LiBr_chill 33801.522975
LiBr_heat 20216.221875
microalgae-biofuels_wetExtraction-l 12.39
microalgae-biofuels_wetExtraction-s 0.00141
microCHP-fuelCell-methane 2150
mixedRawSludge_biogas-l 11734646.5152
mixedRawSludge_biogas-s 141132.43008
nuclear-directUseSpentFuel-l 9.875e+09
nuclear-directUseSpentFuel-s 241400
nuclear-fastReactorRecycling-pyroprocess-l 9.875e+09
nuclear-fastReactorRecycling-pyroprocess-s 241400
nuclear-onceThrough-l 9.875e+09
nuclear-onceThrough-s 241400
nuclear-thermalReactorRecycling-l 9.875e+09
nuclear-thermalReactorRecycling-s 241400
review-butanol-fermentation-l 75373474.5792
review-butanol-fermentation-s 16900284.059712
review-methanogenic-digestion-l 18667440.3384
review-methanogenic-digestion-s 2387287.49904
SAF-MBR_wastewater-l 1937617097.616
SAF-MBR_wastewater-s 374.931504
sewageTreatment 39985920
solar-CSP-dryCooling-l 66562500
solar-CSP-dryCooling-s 821250
solar-CSP-l 732187500
solar-CSP-s 821250
surfaceWater_treatment-potable-l 957685994.722955
surfaceWater_treatment-potable-s 202617.707865169
treatment_wastewater 39985920
wasteGas-l 1.8e+08
wasteGas-s 825000
wastewater-biogas-elec-hydrogen_biogas-elec 2592900
wastewater-biogas-elec-hydrogen_elec-hydrogen_HTE-l 0.0125732
wastewater-biogas-elec-hydrogen_elec-hydrogen_HTE-s 0.00168259
wastewater-biogas-elec-hydrogen_elec-hydrogen_KOH-l 0.00214484
wastewater-biogas-elec-hydrogen_elec-hydrogen_KOH-s 0.0173806
wastewater-biogas-elec-hydrogen_elec-hydrogen_PEM-l 0.00253313
wastewater-biogas-elec-hydrogen_elec-hydrogen_PEM-s 0.018554715
wastewater-biogas-elec-hydrogen_wastewater-biogas-l 400896
wastewater-biogas-elec-hydrogen_wastewater-biogas-s 400.896
wasteWaterEffluent_livingMachine 265842088.988764
wasteWaterEffluent_wetlands-l 317.1883146067
wasteWaterEffluent_wetlands-s 9576797.88918205
wastewater-reuse-irrigation-l 317.1883146067
wastewater-reuse-irrigation-s 189886425.168539
wastewater-reuse-potable-l 317.1883146067
wastewater-reuse-potable-s 6842.88
wastewater-reuse-residential-l 1816311.75693527
wastewater-reuse-residential-s 93216.6974900927
waterTreatment 31636800
WtE-l 62522000
WtE-MSW_cogen-l 62522000
WtE-MSW_cogen-s 17685200
WtE-MSW_elec-l 62522000
WtE-MSW_elec-s 17685200
WtE-s 17685200
landfill_ShannGu 0
water-generaliser-NonPotable 0
MSW-splitter 0
waste-generaliser-biomassAgri 0
waste-generaliser-digestate 0
waste-generaliser-foodWaste 0
waste-generaliser-MSW 0
waste-generaliser-organic 0
waste-generaliser-recyclable 0
waste-generaliser-vegWaste 0
wasteOrganic-generaliser-vegWaste 0
/;
PARAMETER
max_num(P)
/
activated-sludge-l 2
activated-sludge-ozone-l 2
activated-sludge-ozone-s 150
activated-sludge-s 150
airCon_central 150
airCon_split 150
algae-cultivation-l 2
algae-cultivation-s 150
algae-production-pond-l 2
algae-production-pond-s 150
anaerobic-digester-annamox-l 2
anaerobic-digester-annamox-s 150
anaerobicDigestion_sludge-l 2
anaerobicDigestion_sludge_manure-l 2
anaerobicDigestion_sludge_manure-s 150
anaerobicDigestion_sludge-s 150
anaerobicDigestion_sludge_usedOil-l 2
anaerobicDigestion_sludge_usedOil-s 150
anaerobicDigestion_wastewater-l 2
anaerobicDigestion_wastewater-s 150
anaerobicFermentation 150
biochemical_cornStover_ethanol-l 2
biochemical_cornStover_ethanol-s 150
biochemical_wastePaper_ethanol-l 2
biochemical_wastePaper_ethanol-s 150
biochemical_wheatStraw_ethanol-l 2
biochemical_wheatStraw_ethanol-s 150
biochemical_woodChips_ethanol-l 2
biochemical_woodChips_ethanol-s 150
biodiesel_boiler-l 2
biodiesel_boiler-s 150
biodiesel-cookingOil-l 2
biodiesel-cookingOil-s 150
biogas-CHP-l 2
biogas-CHP-s 150
biogas-MSW-agri-l 2
biogas-MSW-agri-s 150
biogas-MSW-l 2
biogas-MSW-sewage-combo-l 2
biogas-MSW-sewage-combo-s 150
biogas-MSW-s 150
biogas-UPGRADE-methane-AwR-l 2
biogas-UPGRADE-methane-AwR-s 150
biogas-UPGRADE-methane-BABIU-l 2
biogas-UPGRADE-methane-BABIU-s 150
biogas-UPGRADE-methane-HPWS-l 2
biogas-UPGRADE-methane-HPWS-s 150
biogas-vegWaste-l 2
biogas-vegWaste-s 150
biomass_biogas-biodiesel 150
biomass_ethanol-l 2
biomass_ethanol-s 150
biomass-gasification-l 2
biomass-gasification-s 150
biomass-pyrolysis-l 2
biomass-pyrolysis-s 150
biomass-to-DME 150
boiler_domestic 150
boiler_gas 150
boilerRoom 150
centralCooling 150
centralHeating 150
CHP-biomass-l 2
CHP-biomass-s 150
CHP-decentralised-fuelCell_biomass-l 2
CHP-decentralised-fuelCell_biomass-s 150
CHP-gas_fuelOil-l 2
CHP-gas_fuelOil-s 150
CHP-gas_gasNatural-l 2
CHP-gas_gasNatural-s 150
CHP-microTurbine_gasNatural-l 2
CHP-microTurbine_gasNatural-s 150
CHP-microTurbine_liquidFuel-l 2
CHP-microTurbine_liquidFuel-s 150
CHP-reciprocatingEngine_gasNatural-l 2
CHP-reciprocatingEngine_gasNatural-s 150
CHP-reciprocatingEngine_LPG-l 2
CHP-reciprocatingEngine_LPG-s 150
CHP-reciprocatingEngine_wasteGas-l 2
CHP-reciprocatingEngine_wasteGas-s 150
CHP-steam-large_biogas 2
CHP-steam-large_fuelOil 2
CHP-steam-large_gasNatural 2
CHP-steam-large_hydrogen 2
CHP-steam-large_liquidFuel 2
CHP-steam-large_LPG 2
CHP-steam-large_methanol 2
CHP-steam-large_propane 2
CHP-steam-large_wasteGas 2
CHP-steam-small_biogas 150
CHP-steam-small_fuelOil 150
CHP-steam-small_gasNatural 150
CHP-steam-small_liquidFuel_hydrogen 150
CHP-steam-small_liquidFuel 150
CHP-steam-small_LPG 150
CHP-steam-small_methanol 150
CHP-steam-small_propane 150
CHP-steam-small_wasteGas 150
CHP 150
coal-combustion-bituminous-l 2
coal-combustion-bituminous-s 150
cofiring-biomass-coal-l 2
cofiring-biomass-coal-s 150
cofiring-boiler_coal-biomass-l 2
cofiring-boiler_coal-biomass-s 150
combustion-biomass-l 2
combustion-biomass-s 150
combustion-coal-combined-cycle-l 2
combustion-coal-combined-cycle-s 150
combustion-coal-l 2
combustion-coal-s 150
combustion-sludgeDigested-l 2
combustion-sludgeDigested-s 150
combustion-sludgeRaw-l 2
combustion-sludgeRaw-s 150
constructed-wetland-irrigation-l 2
constructed-wetland-irrigation-s 150
constructed-wetland-nonPotable-l 2
constructed-wetland-nonPotable-s 150
conventionalAirConditioning 150
cooling-evaporative-cooling 150
cooling-evaporative-heating 150
cooling-thermallyActivated_adsorption-activatedCarbon 150
cooling-thermallyActivated_adsorption-silica-l 2
cooling-thermallyActivated_adsorption-silica-s 150
cooling-thermallyActivated_H2O-NH3_double 150
cooling-thermallyActivated_H2O-NH3_single-l 2
cooling-thermallyActivated_H2O-NH3_single-small-l 2
cooling-thermallyActivated_H2O-NH3_single-small-s 150
cooling-thermallyActivated_H2O-NH3_single-s 150
cooling-thermallyActivated_LiBr-H2O_double-l 2
cooling-thermallyActivated_LiBr-H2O_double-s 150
cooling-thermallyActivated_LiBr-H2O_single-l 2
cooling-thermallyActivated_LiBr-H2O_single-s 150
cooling-thermallyActivated_liquidDessicant-l 2
cooling-thermallyActivated_liquidDessicant-s 150
cooling-thermallyActivated_solidDessicant-l 2
cooling-thermallyActivated_solidDessicant-s 150
desalination-multiEffectDistillation-l 2
desalination-multiEffectDistillation-s 150
desalination-multiStageFlash-l 2
desalination-multiStageFlash-s 150
desalination-photovoltaicModules 150
desalination-ReverseOsmosis-l 2
desalination-ReverseOsmosis-PV-l 2
desalination-ReverseOsmosis-PV-s 150
desalination-ReverseOsmosis-s 150
desalination-solarPond-l 2
desalination-solarPond-s 150
digestion_biomassAgriWaste_biodiesel-l 2
digestion_biomassAgriWaste_biodiesel-s 150
distributed-engine-cogen-l 2
distributed-engine-cogen-s 150
distributed-engine-l 2
distributed-engine-s 150
distributed-gas-turbine-micro-cogen-l 2
distributed-gas-turbine-micro-cogen-s 150
distributed-gas-turbine-micro-l 2
distributed-gas-turbine-micro-s 150
distributed-solar-l 2
distributed-solar-s 150
distributed-wind-l 2
distributed-wind-s 150
district-cogen-absorptionChiller 150
district-cogen-heating 150
elecplant-biomass-l 2
elecplant-biomass-s 150
elecplant-coal-l 2
elecplant-coal-s 150
elecplant-cofiring-biomass-coal-fluidisedBed-l 2
elecplant-cofiring-biomass-coal-fluidisedBed-s 150
elecplant_hydrogenLooping-l 2
elecplant_hydrogenLooping-s 150
fossilHydrogen_intrinsicCO2capture 150
gasif-bmass-methanol-condensingTurbine-hPump-twoSteamLevels-l 150
gasif-bmass-methanol-condensingTurbine-hPump-twoSteamLevels-s 150
gasif-bmass-methanol-condensingTurbine-noDrying-adj-l 150
gasif-bmass-methanol-condensingTurbine-noDrying-adj-s 150
gasification-MSW-elec-l 2
gasification-MSW-elec-s 150
gasification_sludge_hydrogen-l 2
gasification_sludge_hydrogen-s 150
gasification_sludge-l 2
gasification_sludge-s 150
gasification-waste-high-temp-l 2
gasification-waste-high-temp_steam-l 2
gasification-waste-high-temp_steam-s 150
gasification-waste-high-temp-s 150
gasification-waste-plama-ICE-steam-CC-l 2
gasification-waste-plama-ICE-steam-CC-s 150
groundWater-pumping-ShannGu 150
heatEx_cold 150
heatEx_hot 150
heatingPlant-pyrolysis_biomass-oil 150
heatPump-ASHP-highEff-radOrDHW-l 2
heatPump-ASHP-highEff-radOrDHW-s 150
heatPump-ASHP-highEff-screedFloor-l 2
heatPump-ASHP-highEff-screedFloor-s 150
heatPump-ASHP-highEff-timberFloor-l 2
heatPump-ASHP-highEff-timberFloor-s 150
heatPump-ASHP-screedFloor-l 2
heatPump-ASHP-screedFloor-s 150
heatPump-ASHP-twoStage-screedFloor-l 2
heatPump-ASHP-twoStage-screedFloor-s 150
heatPump-ASHP-twoStage-timberFloor-l 2
heatPump-ASHP-twoStage-timberFloor-s 150
heatPump-groundCoupled-heating-l 2
heatPump-groundCoupled-heating-s 150
heatPump_ground 150
heatPump-GSHP-ground-radAndDHW-l 2
heatPump-GSHP-ground-radAndDHW-s 150
heatPump-GSHP-ground-radOrDHW-l 2
heatPump-GSHP-ground-radOrDHW-s 150
heatPump-GSHP-ground-screedFloor-l 2
heatPump-GSHP-ground-screedFloor-s 150
heatPump-GSHP-ground-timberFloor-l 2
heatPump-GSHP-ground-timberFloor-s 150
heatPump-GSHP-radOrDHW-l 2
heatPump-GSHP-radOrDHW-s 150
heatPump-GSHP-screedFloor-l 2
heatPump-GSHP-screedFloor-s 150
heatPump-GSHP-timberFloor-l 2
heatPump-GSHP-timberFloor-s 150
heatPump-sewage-cooling-l 2
heatPump-sewage-cooling-s 150
heatPump-sewage-heating-l 2
heatPump-sewage-heating-s 150
heatPump-solarAssisted-cooling 150
heatPump-solarAssisted-heating 150
heatPump-transcriticalCO2-radAndDHW-l 2
heatPump-transcriticalCO2-radAndDHW-s 150
heatPump-transcriticalCO2-radOrDHW-l 2
heatPump-transcriticalCO2-radOrDHW-s 150
heatPump-transcriticalCO2-screedFloor-l 2
heatPump-transcriticalCO2-screedFloor-s 150
heatPump_water 150
leachateTreatment_anaerobicMembraneBioreactor 150
leachateTreatment-electrodyalysis 150
LiBr_chill 150
LiBr_heat 150
microalgae-biofuels_wetExtraction-l 2
microalgae-biofuels_wetExtraction-s 150
microCHP-fuelCell-methane 150
mixedRawSludge_biogas-l 2
mixedRawSludge_biogas-s 150
nuclear-directUseSpentFuel-l 2
nuclear-directUseSpentFuel-s 150
nuclear-fastReactorRecycling-pyroprocess-l 2
nuclear-fastReactorRecycling-pyroprocess-s 150
nuclear-onceThrough-l 2
nuclear-onceThrough-s 150
nuclear-thermalReactorRecycling-l 2
nuclear-thermalReactorRecycling-s 150
review-butanol-fermentation-l 2
review-butanol-fermentation-s 150
review-methanogenic-digestion-l 2
review-methanogenic-digestion-s 150
SAF-MBR_wastewater-l 2
SAF-MBR_wastewater-s 150
sewageTreatment 150
solar-CSP-dryCooling-l 2
solar-CSP-dryCooling-s 150
solar-CSP-l 2
solar-CSP-s 150
surfaceWater_treatment-potable-l 2
surfaceWater_treatment-potable-s 150
treatment_wastewater 150
wasteGas-l 2
wasteGas-s 150
wastewater-biogas-elec-hydrogen_biogas-elec 150
wastewater-biogas-elec-hydrogen_elec-hydrogen_HTE-l 2
wastewater-biogas-elec-hydrogen_elec-hydrogen_HTE-s 150
wastewater-biogas-elec-hydrogen_elec-hydrogen_KOH-l 2
wastewater-biogas-elec-hydrogen_elec-hydrogen_KOH-s 150
wastewater-biogas-elec-hydrogen_elec-hydrogen_PEM-l 2
wastewater-biogas-elec-hydrogen_elec-hydrogen_PEM-s 150
wastewater-biogas-elec-hydrogen_wastewater-biogas-l 2
wastewater-biogas-elec-hydrogen_wastewater-biogas-s 150
wasteWaterEffluent_livingMachine 150
wasteWaterEffluent_wetlands-l 2
wasteWaterEffluent_wetlands-s 150
wastewater-reuse-irrigation-l 2
wastewater-reuse-irrigation-s 150
wastewater-reuse-potable-l 2
wastewater-reuse-potable-s 150
wastewater-reuse-residential-l 2
wastewater-reuse-residential-s 150
waterTreatment 2
WtE-l 2
WtE-MSW_cogen-l 2
WtE-MSW_cogen-s 150
WtE-MSW_elec-l 2
WtE-MSW_elec-s 150
WtE-s 150
landfill_ShannGu 0
water-generaliser-NonPotable 0
MSW-splitter 0
waste-generaliser-biomassAgri 0
waste-generaliser-digestate 0
waste-generaliser-foodWaste 0
waste-generaliser-MSW 0
waste-generaliser-organic 0
waste-generaliser-recyclable 0
waste-generaliser-vegWaste 0
wasteOrganic-generaliser-vegWaste 0
/;
PARAMETER
cost_transp_cap(TT)
/
pipe_gas 215198
pipe_hot_primary_feed 502128
pipe_hot_primary_return 502128
pipe_hot_secondary_feed 502128
pipe_hot_secondary_return 502128
pipe_cold_primary_feed 502128
pipe_cold_primary_return 502128
pipe_cold_secondary_feed 502128
pipe_cold_secondary_return 502128
cable 114772
pipe_wastewater 215198
pipe_water 215198
pipe_waterPotable 215198
pipe_water_pure 215198
road_wasteOrganic 0
road_algaeDry 0
road_ash 0
road_biodiesel 0
road_biomassAgriWaste 0
road_biomass 0
road_biooil 0
road_butanol 0
road_coal 0
road_coke 0
road_diesel 0
road_digestate 0
road_DME 0
road_ethanol 0
road_fertilizer 0
road_foodWaste 0
road_fuelOil 0
pipe_gasLandfill 215198
road_gasoline 0
pipe_groundWater 215198
road_hydrogen 0
road_liquidFuel 0
road_LPG 0
road_manure 0
road_metal 0
pipe_methane 215198
road_methanol 0
road_MSW 0
road_nuclearFuelSpent 0
road_oilUsed 0
road_recyclables 0
road_slag 0
road_sludge 0
road_uranium 0
road_vegWaste 0
road_waste 0
pipe_waterNonPotable 215198
road_wood 0
/;
PARAMETER
rate_transp_min(TT,T)
/
pipe_gas .wint 0
pipe_hot_primary_feed .wint 0
pipe_hot_primary_return .wint 0
pipe_hot_secondary_feed .wint 0
pipe_hot_secondary_return .wint 0
pipe_cold_primary_feed .wint 0
pipe_cold_primary_return .wint 0
pipe_cold_secondary_feed .wint 0
pipe_cold_secondary_return .wint 0
cable .wint 0
pipe_wastewater .wint 0
pipe_water .wint 0
pipe_waterPotable .wint 0
pipe_water_pure .wint 0
road_wasteOrganic .wint 0
road_algaeDry .wint 0
road_ash .wint 0
road_biodiesel .wint 0
road_biomassAgriWaste .wint 0
road_biomass .wint 0
road_biooil .wint 0
road_butanol .wint 0
road_coal .wint 0
road_coke .wint 0
road_diesel .wint 0
road_digestate .wint 0
road_DME .wint 0
road_ethanol .wint 0
road_fertilizer .wint 0
road_foodWaste .wint 0
road_fuelOil .wint 0
pipe_gasLandfill .wint 0
road_gasoline .wint 0
pipe_groundWater .wint 0
road_hydrogen .wint 0
road_liquidFuel .wint 0
road_LPG .wint 0
road_manure .wint 0
road_metal .wint 0
pipe_methane .wint 0
road_methanol .wint 0
road_MSW .wint 0
road_nuclearFuelSpent .wint 0
road_oilUsed .wint 0
road_recyclables .wint 0
road_slag .wint 0
road_sludge .wint 0
road_uranium .wint 0
road_vegWaste .wint 0
road_waste .wint 0
pipe_waterNonPotable .wint 0
road_wood .wint 0
pipe_gas .sum 0
pipe_hot_primary_feed .sum 0
pipe_hot_primary_return .sum 0
pipe_hot_secondary_feed .sum 0
pipe_hot_secondary_return .sum 0
pipe_cold_primary_feed .sum 0
pipe_cold_primary_return .sum 0
pipe_cold_secondary_feed .sum 0
pipe_cold_secondary_return .sum 0
cable .sum 0
pipe_wastewater .sum 0
pipe_water .sum 0
pipe_waterPotable .sum 0
pipe_water_pure .sum 0
road_wasteOrganic .sum 0
road_algaeDry .sum 0
road_ash .sum 0
road_biodiesel .sum 0
road_biomassAgriWaste .sum 0
road_biomass .sum 0
road_biooil .sum 0
road_butanol .sum 0
road_coal .sum 0
road_coke .sum 0
road_diesel .sum 0
road_digestate .sum 0
road_DME .sum 0
road_ethanol .sum 0
road_fertilizer .sum 0
road_foodWaste .sum 0
road_fuelOil .sum 0
pipe_gasLandfill .sum 0
road_gasoline .sum 0
pipe_groundWater .sum 0
road_hydrogen .sum 0
road_liquidFuel .sum 0
road_LPG .sum 0
road_manure .sum 0
road_metal .sum 0
pipe_methane .sum 0
road_methanol .sum 0
road_MSW .sum 0
road_nuclearFuelSpent .sum 0
road_oilUsed .sum 0
road_recyclables .sum 0
road_slag .sum 0
road_sludge .sum 0
road_uranium .sum 0
road_vegWaste .sum 0
road_waste .sum 0
pipe_waterNonPotable .sum 0
road_wood .sum 0
pipe_gas .shoulder 0
pipe_hot_primary_feed .shoulder 0
pipe_hot_primary_return .shoulder 0
pipe_hot_secondary_feed .shoulder 0
pipe_hot_secondary_return .shoulder 0
pipe_cold_primary_feed .shoulder 0
pipe_cold_primary_return .shoulder 0
pipe_cold_secondary_feed .shoulder 0
pipe_cold_secondary_return .shoulder 0
cable .shoulder 0
pipe_wastewater .shoulder 0
pipe_water .shoulder 0
pipe_waterPotable .shoulder 0
pipe_water_pure .shoulder 0
road_wasteOrganic .shoulder 0
road_algaeDry .shoulder 0
road_ash .shoulder 0
road_biodiesel .shoulder 0
road_biomassAgriWaste .shoulder 0
road_biomass .shoulder 0
road_biooil .shoulder 0
road_butanol .shoulder 0
road_coal .shoulder 0
road_coke .shoulder 0
road_diesel .shoulder 0
road_digestate .shoulder 0
road_DME .shoulder 0
road_ethanol .shoulder 0
road_fertilizer .shoulder 0
road_foodWaste .shoulder 0
road_fuelOil .shoulder 0
pipe_gasLandfill .shoulder 0
road_gasoline .shoulder 0
pipe_groundWater .shoulder 0
road_hydrogen .shoulder 0
road_liquidFuel .shoulder 0
road_LPG .shoulder 0
road_manure .shoulder 0
road_metal .shoulder 0
pipe_methane .shoulder 0
road_methanol .shoulder 0
road_MSW .shoulder 0
road_nuclearFuelSpent .shoulder 0
road_oilUsed .shoulder 0
road_recyclables .shoulder 0
road_slag .shoulder 0
road_sludge .shoulder 0
road_uranium .shoulder 0
road_vegWaste .shoulder 0
road_waste .shoulder 0
pipe_waterNonPotable .shoulder 0
road_wood .shoulder 0
/; 
PARAMETER
rate_transp_max(TT,T)
/
pipe_gas .wint 1000
pipe_hot_primary_feed .wint 1000
pipe_hot_primary_return .wint 1000
pipe_hot_secondary_feed .wint 1000
pipe_hot_secondary_return .wint 1000
pipe_cold_primary_feed .wint 1000
pipe_cold_primary_return .wint 1000
pipe_cold_secondary_feed .wint 1000
pipe_cold_secondary_return .wint 1000
cable .wint 5000
pipe_wastewater .wint 1000
pipe_water .wint 1000
pipe_waterPotable .wint 1000
pipe_water_pure .wint 1000
road_wasteOrganic .wint 1000
road_algaeDry .wint 1000
road_ash .wint 1000
road_biodiesel .wint 1000
road_biomassAgriWaste .wint 1000
road_biomass .wint 1000
road_biooil .wint 1000
road_butanol .wint 1000
road_coal .wint 1000
road_coke .wint 1000
road_diesel .wint 1000
road_digestate .wint 1000
road_DME .wint 1000
road_ethanol .wint 1000
road_fertilizer .wint 1000
road_foodWaste .wint 1000
road_fuelOil .wint 1000
pipe_gasLandfill .wint 1000
road_gasoline .wint 1000
pipe_groundWater .wint 1000
road_hydrogen .wint 1000
road_liquidFuel .wint 1000
road_LPG .wint 1000
road_manure .wint 1000
road_metal .wint 1000
pipe_methane .wint 1000
road_methanol .wint 1000
road_MSW .wint 1000
road_nuclearFuelSpent .wint 1000
road_oilUsed .wint 1000
road_recyclables .wint 1000
road_slag .wint 1000
road_sludge .wint 1000
road_uranium .wint 1000
road_vegWaste .wint 1000
road_waste .wint 1000
pipe_waterNonPotable .wint 1000
road_wood .wint 1000
pipe_gas .sum 1000
pipe_hot_primary_feed .sum 1000
pipe_hot_primary_return .sum 1000
pipe_hot_secondary_feed .sum 1000
pipe_hot_secondary_return .sum 1000
pipe_cold_primary_feed .sum 1000
pipe_cold_primary_return .sum 1000
pipe_cold_secondary_feed .sum 1000
pipe_cold_secondary_return .sum 1000
cable .sum 5000
pipe_wastewater .sum 1000
pipe_water .sum 1000
pipe_waterPotable .sum 1000
pipe_water_pure .sum 1000
road_wasteOrganic .sum 1000
road_algaeDry .sum 1000
road_ash .sum 1000
road_biodiesel .sum 1000
road_biomassAgriWaste .sum 1000
road_biomass .sum 1000
road_biooil .sum 1000
road_butanol .sum 1000
road_coal .sum 1000
road_coke .sum 1000
road_diesel .sum 1000
road_digestate .sum 1000
road_DME .sum 1000
road_ethanol .sum 1000
road_fertilizer .sum 1000
road_foodWaste .sum 1000
road_fuelOil .sum 1000
pipe_gasLandfill .sum 1000
road_gasoline .sum 1000
pipe_groundWater .sum 1000
road_hydrogen .sum 1000
road_liquidFuel .sum 1000
road_LPG .sum 1000
road_manure .sum 1000
road_metal .sum 1000
pipe_methane .sum 1000
road_methanol .sum 1000
road_MSW .sum 1000
road_nuclearFuelSpent .sum 1000
road_oilUsed .sum 1000
road_recyclables .sum 1000
road_slag .sum 1000
road_sludge .sum 1000
road_uranium .sum 1000
road_vegWaste .sum 1000
road_waste .sum 1000
pipe_waterNonPotable .sum 1000
road_wood .sum 1000
pipe_gas .shoulder 1000
pipe_hot_primary_feed .shoulder 1000
pipe_hot_primary_return .shoulder 1000
pipe_hot_secondary_feed .shoulder 1000
pipe_hot_secondary_return .shoulder 1000
pipe_cold_primary_feed .shoulder 1000
pipe_cold_primary_return .shoulder 1000
pipe_cold_secondary_feed .shoulder 1000
pipe_cold_secondary_return .shoulder 1000
cable .shoulder 5000
pipe_wastewater .shoulder 1000
pipe_water .shoulder 1000
pipe_waterPotable .shoulder 1000
pipe_water_pure .shoulder 1000
road_wasteOrganic .shoulder 1000
road_algaeDry .shoulder 1000
road_ash .shoulder 1000
road_biodiesel .shoulder 1000
road_biomassAgriWaste .shoulder 1000
road_biomass .shoulder 1000
road_biooil .shoulder 1000
road_butanol .shoulder 1000
road_coal .shoulder 1000
road_coke .shoulder 1000
road_diesel .shoulder 1000
road_digestate .shoulder 1000
road_DME .shoulder 1000
road_ethanol .shoulder 1000
road_fertilizer .shoulder 1000
road_foodWaste .shoulder 1000
road_fuelOil .shoulder 1000
pipe_gasLandfill .shoulder 1000
road_gasoline .shoulder 1000
pipe_groundWater .shoulder 1000
road_hydrogen .shoulder 1000
road_liquidFuel .shoulder 1000
road_LPG .shoulder 1000
road_manure .shoulder 1000
road_metal .shoulder 1000
pipe_methane .shoulder 1000
road_methanol .shoulder 1000
road_MSW .shoulder 1000
road_nuclearFuelSpent .shoulder 1000
road_oilUsed .shoulder 1000
road_recyclables .shoulder 1000
road_slag .shoulder 1000
road_sludge .shoulder 1000
road_uranium .shoulder 1000
road_vegWaste .shoulder 1000
road_waste .shoulder 1000
pipe_waterNonPotable .shoulder 1000
road_wood .shoulder 1000
/; 
PARAMETER
resource_quality(R,Q)
/
heat .energy 1
cool .energy 1
hot_primary_feed .mass 1
hot_primary_return .mass 1
hot_secondary_feed .mass 1
hot_secondary_return .mass 1
cold_primary_feed .mass 1
cold_primary_return .mass 1
cold_secondary_feed .mass 1
cold_secondary_return .mass 1
gasNatural .mass 1
elec .energy 1
wastewater .mass 1
waste_organic .mass 1
water .mass 1
waterPotable .mass 1
water_pure .mass 1
rain .mass 1
waste .mass 1
gasoline .mass 1
CO2 .mass 1
algaeDry .mass 1
ash .mass 1
biodiesel .mass 1
biomassAgriWaste .mass 1
biomass .mass 1
biooil .mass 1
butanol .mass 1
coal .mass 1
coke .mass 1
diesel .mass 1
digestate .mass 1
DME .mass 1
ethanol .mass 1
fertilizer .mass 1
foodWaste .mass 1
fuelOil .mass 1
gasLandfill .energy 1
groundWater .mass 1
hydrogen .mass 1
liquidFuel .energy 1
LPG .mass 1
manure .mass 1
metal .mass 1
methane .mass 1
methanol .mass 1
MSW .mass 1
nuclearFuelSpent .mass 1
oilUsed .mass 1
recyclables .mass 1
slag .mass 1
sludge .mass 1
uranium .mass 1
vegWaste .mass 1
waterNonPotable .mass 1
wood .mass 1
algae .mass 1
biogas .mass 1
CNG .mass 1
fuel .energy 1
leachate .mass 1
ozone .mass 1
propane .mass 1
seawater .mass 1
solar .energy 1
waterBrackish .mass 1
waterIrrigation .mass 1
wind .energy 1
/;
PARAMETER 
binary_resource(R,Q); 
binary_resource(R,Q)$resource_quality(R,Q) = 1; 
$include data/libraries/processes-praq-gams/activated-sludge-l.gms 
$include data/libraries/processes-praq-gams/activated-sludge-ozone-l.gms 
$include data/libraries/processes-praq-gams/activated-sludge-ozone-s.gms 
$include data/libraries/processes-praq-gams/activated-sludge-s.gms 
$include data/libraries/processes-praq-gams/airCon_central.gms 
$include data/libraries/processes-praq-gams/airCon_split.gms 
$include data/libraries/processes-praq-gams/algae-cultivation-l.gms 
$include data/libraries/processes-praq-gams/algae-cultivation-s.gms 
$include data/libraries/processes-praq-gams/algae-production-pond-l.gms 
$include data/libraries/processes-praq-gams/algae-production-pond-s.gms 
$include data/libraries/processes-praq-gams/anaerobic-digester-annamox-l.gms 
$include data/libraries/processes-praq-gams/anaerobic-digester-annamox-s.gms 
$include data/libraries/processes-praq-gams/anaerobicDigestion_sludge-l.gms 
$include data/libraries/processes-praq-gams/anaerobicDigestion_sludge_manure-l.gms 
$include data/libraries/processes-praq-gams/anaerobicDigestion_sludge_manure-s.gms 
$include data/libraries/processes-praq-gams/anaerobicDigestion_sludge-s.gms 
$include data/libraries/processes-praq-gams/anaerobicDigestion_sludge_usedOil-l.gms 
$include data/libraries/processes-praq-gams/anaerobicDigestion_sludge_usedOil-s.gms 
$include data/libraries/processes-praq-gams/anaerobicDigestion_wastewater-l.gms 
$include data/libraries/processes-praq-gams/anaerobicDigestion_wastewater-s.gms 
$include data/libraries/processes-praq-gams/anaerobicFermentation.gms 
$include data/libraries/processes-praq-gams/biochemical_cornStover_ethanol-l.gms 
$include data/libraries/processes-praq-gams/biochemical_cornStover_ethanol-s.gms 
$include data/libraries/processes-praq-gams/biochemical_wastePaper_ethanol-l.gms 
$include data/libraries/processes-praq-gams/biochemical_wastePaper_ethanol-s.gms 
$include data/libraries/processes-praq-gams/biochemical_wheatStraw_ethanol-l.gms 
$include data/libraries/processes-praq-gams/biochemical_wheatStraw_ethanol-s.gms 
$include data/libraries/processes-praq-gams/biochemical_woodChips_ethanol-l.gms 
$include data/libraries/processes-praq-gams/biochemical_woodChips_ethanol-s.gms 
$include data/libraries/processes-praq-gams/biodiesel_boiler-l.gms 
$include data/libraries/processes-praq-gams/biodiesel_boiler-s.gms 
$include data/libraries/processes-praq-gams/biodiesel-cookingOil-l.gms 
$include data/libraries/processes-praq-gams/biodiesel-cookingOil-s.gms 
$include data/libraries/processes-praq-gams/biogas-CHP-l.gms 
$include data/libraries/processes-praq-gams/biogas-CHP-s.gms 
$include data/libraries/processes-praq-gams/biogas-MSW-agri-l.gms 
$include data/libraries/processes-praq-gams/biogas-MSW-agri-s.gms 
$include data/libraries/processes-praq-gams/biogas-MSW-l.gms 
$include data/libraries/processes-praq-gams/biogas-MSW-sewage-combo-l.gms 
$include data/libraries/processes-praq-gams/biogas-MSW-sewage-combo-s.gms 
$include data/libraries/processes-praq-gams/biogas-MSW-s.gms 
$include data/libraries/processes-praq-gams/biogas-UPGRADE-methane-AwR-l.gms 
$include data/libraries/processes-praq-gams/biogas-UPGRADE-methane-AwR-s.gms 
$include data/libraries/processes-praq-gams/biogas-UPGRADE-methane-BABIU-l.gms 
$include data/libraries/processes-praq-gams/biogas-UPGRADE-methane-BABIU-s.gms 
$include data/libraries/processes-praq-gams/biogas-UPGRADE-methane-HPWS-l.gms 
$include data/libraries/processes-praq-gams/biogas-UPGRADE-methane-HPWS-s.gms 
$include data/libraries/processes-praq-gams/biogas-vegWaste-l.gms 
$include data/libraries/processes-praq-gams/biogas-vegWaste-s.gms 
$include data/libraries/processes-praq-gams/biomass_biogas-biodiesel.gms 
$include data/libraries/processes-praq-gams/biomass_ethanol-l.gms 
$include data/libraries/processes-praq-gams/biomass_ethanol-s.gms 
$include data/libraries/processes-praq-gams/biomass-gasification-l.gms 
$include data/libraries/processes-praq-gams/biomass-gasification-s.gms 
$include data/libraries/processes-praq-gams/biomass-pyrolysis-l.gms 
$include data/libraries/processes-praq-gams/biomass-pyrolysis-s.gms 
$include data/libraries/processes-praq-gams/biomass-to-DME.gms 
$include data/libraries/processes-praq-gams/boiler_domestic.gms 
$include data/libraries/processes-praq-gams/boiler_gas.gms 
$include data/libraries/processes-praq-gams/boilerRoom.gms 
$include data/libraries/processes-praq-gams/centralCooling.gms 
$include data/libraries/processes-praq-gams/centralHeating.gms 
$include data/libraries/processes-praq-gams/CHP-biomass-l.gms 
$include data/libraries/processes-praq-gams/CHP-biomass-s.gms 
$include data/libraries/processes-praq-gams/CHP-decentralised-fuelCell_biomass-l.gms 
$include data/libraries/processes-praq-gams/CHP-decentralised-fuelCell_biomass-s.gms 
$include data/libraries/processes-praq-gams/CHP-gas_fuelOil-l.gms 
$include data/libraries/processes-praq-gams/CHP-gas_fuelOil-s.gms 
$include data/libraries/processes-praq-gams/CHP-gas_gasNatural-l.gms 
$include data/libraries/processes-praq-gams/CHP-gas_gasNatural-s.gms 
$include data/libraries/processes-praq-gams/CHP-microTurbine_gasNatural-l.gms 
$include data/libraries/processes-praq-gams/CHP-microTurbine_gasNatural-s.gms 
$include data/libraries/processes-praq-gams/CHP-microTurbine_liquidFuel-l.gms 
$include data/libraries/processes-praq-gams/CHP-microTurbine_liquidFuel-s.gms 
$include data/libraries/processes-praq-gams/CHP-reciprocatingEngine_gasNatural-l.gms 
$include data/libraries/processes-praq-gams/CHP-reciprocatingEngine_gasNatural-s.gms 
$include data/libraries/processes-praq-gams/CHP-reciprocatingEngine_LPG-l.gms 
$include data/libraries/processes-praq-gams/CHP-reciprocatingEngine_LPG-s.gms 
$include data/libraries/processes-praq-gams/CHP-reciprocatingEngine_wasteGas-l.gms 
$include data/libraries/processes-praq-gams/CHP-reciprocatingEngine_wasteGas-s.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_biogas.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_fuelOil.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_gasNatural.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_hydrogen.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_liquidFuel.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_LPG.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_methanol.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_propane.gms 
$include data/libraries/processes-praq-gams/CHP-steam-large_wasteGas.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_biogas.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_fuelOil.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_gasNatural.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_liquidFuel_hydrogen.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_liquidFuel.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_LPG.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_methanol.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_propane.gms 
$include data/libraries/processes-praq-gams/CHP-steam-small_wasteGas.gms 
$include data/libraries/processes-praq-gams/CHP.gms 
$include data/libraries/processes-praq-gams/coal-combustion-bituminous-l.gms 
$include data/libraries/processes-praq-gams/coal-combustion-bituminous-s.gms 
$include data/libraries/processes-praq-gams/cofiring-biomass-coal-l.gms 
$include data/libraries/processes-praq-gams/cofiring-biomass-coal-s.gms 
$include data/libraries/processes-praq-gams/cofiring-boiler_coal-biomass-l.gms 
$include data/libraries/processes-praq-gams/cofiring-boiler_coal-biomass-s.gms 
$include data/libraries/processes-praq-gams/combustion-biomass-l.gms 
$include data/libraries/processes-praq-gams/combustion-biomass-s.gms 
$include data/libraries/processes-praq-gams/combustion-coal-combined-cycle-l.gms 
$include data/libraries/processes-praq-gams/combustion-coal-combined-cycle-s.gms 
$include data/libraries/processes-praq-gams/combustion-coal-l.gms 
$include data/libraries/processes-praq-gams/combustion-coal-s.gms 
$include data/libraries/processes-praq-gams/combustion-sludgeDigested-l.gms 
$include data/libraries/processes-praq-gams/combustion-sludgeDigested-s.gms 
$include data/libraries/processes-praq-gams/combustion-sludgeRaw-l.gms 
$include data/libraries/processes-praq-gams/combustion-sludgeRaw-s.gms 
$include data/libraries/processes-praq-gams/constructed-wetland-irrigation-l.gms 
$include data/libraries/processes-praq-gams/constructed-wetland-irrigation-s.gms 
$include data/libraries/processes-praq-gams/constructed-wetland-nonPotable-l.gms 
$include data/libraries/processes-praq-gams/constructed-wetland-nonPotable-s.gms 
$include data/libraries/processes-praq-gams/conventionalAirConditioning.gms 
$include data/libraries/processes-praq-gams/cooling-evaporative-cooling.gms 
$include data/libraries/processes-praq-gams/cooling-evaporative-heating.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_adsorption-activatedCarbon.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_adsorption-silica-l.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_adsorption-silica-s.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_H2O-NH3_double.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_H2O-NH3_single-l.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_H2O-NH3_single-small-l.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_H2O-NH3_single-small-s.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_H2O-NH3_single-s.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_LiBr-H2O_double-l.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_LiBr-H2O_double-s.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_LiBr-H2O_single-l.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_LiBr-H2O_single-s.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_liquidDessicant-l.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_liquidDessicant-s.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_solidDessicant-l.gms 
$include data/libraries/processes-praq-gams/cooling-thermallyActivated_solidDessicant-s.gms 
$include data/libraries/processes-praq-gams/desalination-multiEffectDistillation-l.gms 
$include data/libraries/processes-praq-gams/desalination-multiEffectDistillation-s.gms 
$include data/libraries/processes-praq-gams/desalination-multiStageFlash-l.gms 
$include data/libraries/processes-praq-gams/desalination-multiStageFlash-s.gms 
$include data/libraries/processes-praq-gams/desalination-photovoltaicModules.gms 
$include data/libraries/processes-praq-gams/desalination-ReverseOsmosis-l.gms 
$include data/libraries/processes-praq-gams/desalination-ReverseOsmosis-PV-l.gms 
$include data/libraries/processes-praq-gams/desalination-ReverseOsmosis-PV-s.gms 
$include data/libraries/processes-praq-gams/desalination-ReverseOsmosis-s.gms 
$include data/libraries/processes-praq-gams/desalination-solarPond-l.gms 
$include data/libraries/processes-praq-gams/desalination-solarPond-s.gms 
$include data/libraries/processes-praq-gams/digestion_biomassAgriWaste_biodiesel-l.gms 
$include data/libraries/processes-praq-gams/digestion_biomassAgriWaste_biodiesel-s.gms 
$include data/libraries/processes-praq-gams/distributed-engine-cogen-l.gms 
$include data/libraries/processes-praq-gams/distributed-engine-cogen-s.gms 
$include data/libraries/processes-praq-gams/distributed-engine-l.gms 
$include data/libraries/processes-praq-gams/distributed-engine-s.gms 
$include data/libraries/processes-praq-gams/distributed-gas-turbine-micro-cogen-l.gms 
$include data/libraries/processes-praq-gams/distributed-gas-turbine-micro-cogen-s.gms 
$include data/libraries/processes-praq-gams/distributed-gas-turbine-micro-l.gms 
$include data/libraries/processes-praq-gams/distributed-gas-turbine-micro-s.gms 
$include data/libraries/processes-praq-gams/distributed-solar-l.gms 
$include data/libraries/processes-praq-gams/distributed-solar-s.gms 
$include data/libraries/processes-praq-gams/distributed-wind-l.gms 
$include data/libraries/processes-praq-gams/distributed-wind-s.gms 
$include data/libraries/processes-praq-gams/district-cogen-absorptionChiller.gms 
$include data/libraries/processes-praq-gams/district-cogen-heating.gms 
$include data/libraries/processes-praq-gams/elecplant-biomass-l.gms 
$include data/libraries/processes-praq-gams/elecplant-biomass-s.gms 
$include data/libraries/processes-praq-gams/elecplant-coal-l.gms 
$include data/libraries/processes-praq-gams/elecplant-coal-s.gms 
$include data/libraries/processes-praq-gams/elecplant-cofiring-biomass-coal-fluidisedBed-l.gms 
$include data/libraries/processes-praq-gams/elecplant-cofiring-biomass-coal-fluidisedBed-s.gms 
$include data/libraries/processes-praq-gams/elecplant_hydrogenLooping-l.gms 
$include data/libraries/processes-praq-gams/elecplant_hydrogenLooping-s.gms 
$include data/libraries/processes-praq-gams/fossilHydrogen_intrinsicCO2capture.gms 
$include data/libraries/processes-praq-gams/gasif-bmass-methanol-condensingTurbine-hPump-twoSteamLevels-l.gms 
$include data/libraries/processes-praq-gams/gasif-bmass-methanol-condensingTurbine-hPump-twoSteamLevels-s.gms 
$include data/libraries/processes-praq-gams/gasif-bmass-methanol-condensingTurbine-noDrying-adj-l.gms 
$include data/libraries/processes-praq-gams/gasif-bmass-methanol-condensingTurbine-noDrying-adj-s.gms 
$include data/libraries/processes-praq-gams/gasification-MSW-elec-l.gms 
$include data/libraries/processes-praq-gams/gasification-MSW-elec-s.gms 
$include data/libraries/processes-praq-gams/gasification_sludge_hydrogen-l.gms 
$include data/libraries/processes-praq-gams/gasification_sludge_hydrogen-s.gms 
$include data/libraries/processes-praq-gams/gasification_sludge-l.gms 
$include data/libraries/processes-praq-gams/gasification_sludge-s.gms 
$include data/libraries/processes-praq-gams/gasification-waste-high-temp-l.gms 
$include data/libraries/processes-praq-gams/gasification-waste-high-temp_steam-l.gms 
$include data/libraries/processes-praq-gams/gasification-waste-high-temp_steam-s.gms 
$include data/libraries/processes-praq-gams/gasification-waste-high-temp-s.gms 
$include data/libraries/processes-praq-gams/gasification-waste-plama-ICE-steam-CC-l.gms 
$include data/libraries/processes-praq-gams/gasification-waste-plama-ICE-steam-CC-s.gms 
$include data/libraries/processes-praq-gams/groundWater-pumping-ShannGu.gms 
$include data/libraries/processes-praq-gams/heatEx_cold.gms 
$include data/libraries/processes-praq-gams/heatEx_hot.gms 
$include data/libraries/processes-praq-gams/heatingPlant-pyrolysis_biomass-oil.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-highEff-radOrDHW-l.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-highEff-radOrDHW-s.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-highEff-screedFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-highEff-screedFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-highEff-timberFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-highEff-timberFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-screedFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-screedFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-twoStage-screedFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-twoStage-screedFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-twoStage-timberFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-ASHP-twoStage-timberFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-groundCoupled-heating-l.gms 
$include data/libraries/processes-praq-gams/heatPump-groundCoupled-heating-s.gms 
$include data/libraries/processes-praq-gams/heatPump_ground.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-ground-radAndDHW-l.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-ground-radAndDHW-s.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-ground-radOrDHW-l.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-ground-radOrDHW-s.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-ground-screedFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-ground-screedFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-ground-timberFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-ground-timberFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-radOrDHW-l.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-radOrDHW-s.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-screedFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-screedFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-timberFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-GSHP-timberFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump-sewage-cooling-l.gms 
$include data/libraries/processes-praq-gams/heatPump-sewage-cooling-s.gms 
$include data/libraries/processes-praq-gams/heatPump-sewage-heating-l.gms 
$include data/libraries/processes-praq-gams/heatPump-sewage-heating-s.gms 
$include data/libraries/processes-praq-gams/heatPump-solarAssisted-cooling.gms 
$include data/libraries/processes-praq-gams/heatPump-solarAssisted-heating.gms 
$include data/libraries/processes-praq-gams/heatPump-transcriticalCO2-radAndDHW-l.gms 
$include data/libraries/processes-praq-gams/heatPump-transcriticalCO2-radAndDHW-s.gms 
$include data/libraries/processes-praq-gams/heatPump-transcriticalCO2-radOrDHW-l.gms 
$include data/libraries/processes-praq-gams/heatPump-transcriticalCO2-radOrDHW-s.gms 
$include data/libraries/processes-praq-gams/heatPump-transcriticalCO2-screedFloor-l.gms 
$include data/libraries/processes-praq-gams/heatPump-transcriticalCO2-screedFloor-s.gms 
$include data/libraries/processes-praq-gams/heatPump_water.gms 
$include data/libraries/processes-praq-gams/leachateTreatment_anaerobicMembraneBioreactor.gms 
$include data/libraries/processes-praq-gams/leachateTreatment-electrodyalysis.gms 
$include data/libraries/processes-praq-gams/LiBr_chill.gms 
$include data/libraries/processes-praq-gams/LiBr_heat.gms 
$include data/libraries/processes-praq-gams/microalgae-biofuels_wetExtraction-l.gms 
$include data/libraries/processes-praq-gams/microalgae-biofuels_wetExtraction-s.gms 
$include data/libraries/processes-praq-gams/microCHP-fuelCell-methane.gms 
$include data/libraries/processes-praq-gams/mixedRawSludge_biogas-l.gms 
$include data/libraries/processes-praq-gams/mixedRawSludge_biogas-s.gms 
$include data/libraries/processes-praq-gams/nuclear-directUseSpentFuel-l.gms 
$include data/libraries/processes-praq-gams/nuclear-directUseSpentFuel-s.gms 
$include data/libraries/processes-praq-gams/nuclear-fastReactorRecycling-pyroprocess-l.gms 
$include data/libraries/processes-praq-gams/nuclear-fastReactorRecycling-pyroprocess-s.gms 
$include data/libraries/processes-praq-gams/nuclear-onceThrough-l.gms 
$include data/libraries/processes-praq-gams/nuclear-onceThrough-s.gms 
$include data/libraries/processes-praq-gams/nuclear-thermalReactorRecycling-l.gms 
$include data/libraries/processes-praq-gams/nuclear-thermalReactorRecycling-s.gms 
$include data/libraries/processes-praq-gams/review-butanol-fermentation-l.gms 
$include data/libraries/processes-praq-gams/review-butanol-fermentation-s.gms 
$include data/libraries/processes-praq-gams/review-methanogenic-digestion-l.gms 
$include data/libraries/processes-praq-gams/review-methanogenic-digestion-s.gms 
$include data/libraries/processes-praq-gams/SAF-MBR_wastewater-l.gms 
$include data/libraries/processes-praq-gams/SAF-MBR_wastewater-s.gms 
$include data/libraries/processes-praq-gams/sewageTreatment.gms 
$include data/libraries/processes-praq-gams/solar-CSP-dryCooling-l.gms 
$include data/libraries/processes-praq-gams/solar-CSP-dryCooling-s.gms 
$include data/libraries/processes-praq-gams/solar-CSP-l.gms 
$include data/libraries/processes-praq-gams/solar-CSP-s.gms 
$include data/libraries/processes-praq-gams/surfaceWater_treatment-potable-l.gms 
$include data/libraries/processes-praq-gams/surfaceWater_treatment-potable-s.gms 
$include data/libraries/processes-praq-gams/treatment_wastewater.gms 
$include data/libraries/processes-praq-gams/wasteGas-l.gms 
$include data/libraries/processes-praq-gams/wasteGas-s.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_biogas-elec.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_elec-hydrogen_HTE-l.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_elec-hydrogen_HTE-s.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_elec-hydrogen_KOH-l.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_elec-hydrogen_KOH-s.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_elec-hydrogen_PEM-l.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_elec-hydrogen_PEM-s.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_wastewater-biogas-l.gms 
$include data/libraries/processes-praq-gams/wastewater-biogas-elec-hydrogen_wastewater-biogas-s.gms 
$include data/libraries/processes-praq-gams/wasteWaterEffluent_livingMachine.gms 
$include data/libraries/processes-praq-gams/wasteWaterEffluent_wetlands-l.gms 
$include data/libraries/processes-praq-gams/wasteWaterEffluent_wetlands-s.gms 
$include data/libraries/processes-praq-gams/wastewater-reuse-irrigation-l.gms 
$include data/libraries/processes-praq-gams/wastewater-reuse-irrigation-s.gms 
$include data/libraries/processes-praq-gams/wastewater-reuse-potable-l.gms 
$include data/libraries/processes-praq-gams/wastewater-reuse-potable-s.gms 
$include data/libraries/processes-praq-gams/wastewater-reuse-residential-l.gms 
$include data/libraries/processes-praq-gams/wastewater-reuse-residential-s.gms 
$include data/libraries/processes-praq-gams/waterTreatment.gms 
$include data/libraries/processes-praq-gams/WtE-l.gms 
$include data/libraries/processes-praq-gams/WtE-MSW_cogen-l.gms 
$include data/libraries/processes-praq-gams/WtE-MSW_cogen-s.gms 
$include data/libraries/processes-praq-gams/WtE-MSW_elec-l.gms 
$include data/libraries/processes-praq-gams/WtE-MSW_elec-s.gms 
$include data/libraries/processes-praq-gams/WtE-s.gms 
$include data/libraries/processes-praq-gams/landfill_ShannGu.gms 
$include data/libraries/processes-praq-gams/water-generaliser-NonPotable.gms 
$include data/libraries/processes-praq-gams/MSW-splitter.gms 
$include data/libraries/processes-praq-gams/waste-generaliser-biomassAgri.gms 
$include data/libraries/processes-praq-gams/waste-generaliser-digestate.gms 
$include data/libraries/processes-praq-gams/waste-generaliser-foodWaste.gms 
$include data/libraries/processes-praq-gams/waste-generaliser-MSW.gms 
$include data/libraries/processes-praq-gams/waste-generaliser-organic.gms 
$include data/libraries/processes-praq-gams/waste-generaliser-recyclable.gms 
$include data/libraries/processes-praq-gams/waste-generaliser-vegWaste.gms 
$include data/libraries/processes-praq-gams/wasteOrganic-generaliser-vegWaste.gms 
PARAMETER 
binary_process(P,R,Q); 
binary_process(P,R,Q)$(binary_resource(R,Q)=1) = 1; 
PARAMETER 
binary_transport(TT,R,Q); 
binary_transport(TT,R,Q)$(binary_resource(R,Q)=1) = 1; 
$include data/libraries/transport-praq-gams/pipe_gas.gms 
$include data/libraries/transport-praq-gams/pipe_hot_primary_feed.gms 
$include data/libraries/transport-praq-gams/pipe_hot_primary_return.gms 
$include data/libraries/transport-praq-gams/pipe_hot_secondary_feed.gms 
$include data/libraries/transport-praq-gams/pipe_hot_secondary_return.gms 
$include data/libraries/transport-praq-gams/pipe_cold_primary_feed.gms 
$include data/libraries/transport-praq-gams/pipe_cold_primary_return.gms 
$include data/libraries/transport-praq-gams/pipe_cold_secondary_feed.gms 
$include data/libraries/transport-praq-gams/pipe_cold_secondary_return.gms 
$include data/libraries/transport-praq-gams/cable.gms 
$include data/libraries/transport-praq-gams/pipe_wastewater.gms 
$include data/libraries/transport-praq-gams/pipe_water.gms 
$include data/libraries/transport-praq-gams/pipe_waterPotable.gms 
$include data/libraries/transport-praq-gams/pipe_water_pure.gms 
$include data/libraries/transport-praq-gams/road_wasteOrganic.gms 
$include data/libraries/transport-praq-gams/road_algaeDry.gms 
$include data/libraries/transport-praq-gams/road_ash.gms 
$include data/libraries/transport-praq-gams/road_biodiesel.gms 
$include data/libraries/transport-praq-gams/road_biomassAgriWaste.gms 
$include data/libraries/transport-praq-gams/road_biomass.gms 
$include data/libraries/transport-praq-gams/road_biooil.gms 
$include data/libraries/transport-praq-gams/road_butanol.gms 
$include data/libraries/transport-praq-gams/road_coal.gms 
$include data/libraries/transport-praq-gams/road_coke.gms 
$include data/libraries/transport-praq-gams/road_diesel.gms 
$include data/libraries/transport-praq-gams/road_digestate.gms 
$include data/libraries/transport-praq-gams/road_DME.gms 
$include data/libraries/transport-praq-gams/road_ethanol.gms 
$include data/libraries/transport-praq-gams/road_fertilizer.gms 
$include data/libraries/transport-praq-gams/road_foodWaste.gms 
$include data/libraries/transport-praq-gams/road_fuelOil.gms 
$include data/libraries/transport-praq-gams/pipe_gasLandfill.gms 
$include data/libraries/transport-praq-gams/road_gasoline.gms 
$include data/libraries/transport-praq-gams/pipe_groundWater.gms 
$include data/libraries/transport-praq-gams/road_hydrogen.gms 
$include data/libraries/transport-praq-gams/road_liquidFuel.gms 
$include data/libraries/transport-praq-gams/road_LPG.gms 
$include data/libraries/transport-praq-gams/road_manure.gms 
$include data/libraries/transport-praq-gams/road_metal.gms 
$include data/libraries/transport-praq-gams/pipe_methane.gms 
$include data/libraries/transport-praq-gams/road_methanol.gms 
$include data/libraries/transport-praq-gams/road_MSW.gms 
$include data/libraries/transport-praq-gams/road_nuclearFuelSpent.gms 
$include data/libraries/transport-praq-gams/road_oilUsed.gms 
$include data/libraries/transport-praq-gams/road_recyclables.gms 
$include data/libraries/transport-praq-gams/road_slag.gms 
$include data/libraries/transport-praq-gams/road_sludge.gms 
$include data/libraries/transport-praq-gams/road_uranium.gms 
$include data/libraries/transport-praq-gams/road_vegWaste.gms 
$include data/libraries/transport-praq-gams/road_waste.gms 
$include data/libraries/transport-praq-gams/pipe_waterNonPotable.gms 
$include data/libraries/transport-praq-gams/road_wood.gms 
SCALAR pareto_lim /1e8/;
$include code/variables-space-time.gms 
$include code/equations-space-time-wildcard_current_minCost.gms 
$include code/custom.gms 
$include code/solve-spatial.gms 
