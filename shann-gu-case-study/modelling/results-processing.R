###--------------------------------------------------
### T. Ravalde
### Last edited: 2016/05/20
###--------------------------------------------------

library(dplyr)
library(reshape2)
library(ggplot2)

# Processing results

###--------------------------------------------------
### Load in CSV results which have been copied from the cluster using process-results.sh
### Remove obsolete entries (where value==0)
###--------------------------------------------------

args <- commandArgs()
print(args)
scenario_name <- args[6]
#scenario_name <- "cluster-results/wildcard_current_minCost"
#scenario_name <- "cluster-results/designCase_minWaste"
#scenario_name <- "cluster-results/designCase_minCost"
#scenario_name <- "cluster-results/designCase_minEmissions"
scenario_name <- "cluster-results/designCase_minWaste"
#scenario_name <- "cluster-results/designCase_minWater"

dir <- paste("model/results/", scenario_name, sep="") ## TEST for the ENA

## Function to write the file path and load the data
getResults <- function(csv_filename){

  results <- read.csv(file.path(dir, "data", csv_filename))
}


## Load processes, by applying our getResults() function
demands <- read.csv("model/data/model-definition/demands-nonzero.csv")
processes <- getResults("results-praq-processes.csv")
resources <- getResults("results-praq-resources.csv")
resource_prod_qty <- getResults("results-praq-production.csv")
resource_prod_qual <- getResults("results-praq-quality.csv")
isTransport <- getResults("results-praq-IsTransp.csv")
transport <- getResults("results-praq-transp.csv")
resource_flow_qty <- getResults("results-praq-zoneflow.csv")
resource_flow_qual <- getResults("results-praq-zoneflowQuality.csv")

## Remove zero entries
processes <- filter(processes, rate!=0)
resources <- filter(resources, imports!=0 | exports!=0)
resource_prod_qty <- filter(resource_prod_qty, value!=0)
resource_prod_qual <- filter(resource_prod_qual, value!=0)
#isTransport <- filter(isTransport, isTransp!=0)
transport <- filter(transport, rate!=0)
resource_flow_qty <- filter(resource_flow_qty, value!=0)
resource_flow_qual <- filter(resource_flow_qual, value!=0)

## Remove resource imports where imports==exports (This is where the model has imported maximimum amounts of a free resource. This messes up the exergy calculations)
list_of_removed_resources <- unique(filter(resources, imports==exports)$resource)
resources <- filter(resources, imports!=exports)
write.csv(resources, paste(dir, "/metabolic-flows.csv", sep=""), row.names=FALSE)

###--------------------------------------------------
### Analyse and visualise results
### This sometimes requires reshaping the data
###--------------------------------------------------

## Write filepath for directory to store plots
plot_filepath <- paste(dir, "/plots", sep="")

## Reshape imports/exports into the same column
resources_reshaped <- melt(resources, variable.name="Type")

## Remove zero values
resources_reshaped <- filter(resources_reshaped, value!=0)

###--------------------------------------------------
### Calculate headline results:
### - Cost
### - Emissions
### - Waste output
### - Water consumption
###--------------------------------------------------

results_path <- sub("cluster-results/", "", scenario_name)
results_path <- sub("_min.*", "", results_path)
results_path <- paste("model/data/model-definition/", results_path, "/", sep="")

## Cost = 0.1 * cost_prod + 0.1 * cost_transp + cost_res

### cost_prod = sum((P,Z), cost_process_cap(P) * num_process(P,Z))
process_cost_data <- read.csv(paste(results_path, "process-costs.csv", sep=""))
process_cost_data <- select(process_cost_data, process, recosted.cost)
merge_processes_cost <- merge(processes, process_cost_data)
merge_processes_cost <- mutate(merge_processes_cost, cost = number * recosted.cost)
cost_prod <- sum(merge_processes_cost$cost)

### cost_transp = sum((TT,Z,ZZ), cost_transp_cap(TT) * binary_transp(TT,Z,ZZ) * length(Z,ZZ))
transport_cost_data <- read.csv(paste(results_path, "transport.csv", sep="")) ## TODO: automated a generic version of this
transport_cost_data <- select(transport_cost_data, process, USD.per.km)
transport_distances <- read.csv("transport-distances.csv")

merge_transport_distance <- merge(isTransport, transport_distances, by=c("zone_start", "zone_end"))
merge_transport_cost <- merge(merge_transport_distance, transport_cost_data, by.x="transp_tech", by.y="process")
cost_link <- mutate(merge_transport_cost, link_cost = isTransp * kilometers * USD.per.km)
cost_transp <- sum(cost_link$link_cost)
#cost_transp <- 0 # PLACEHOLDER

### cost_res = sum((R,Z,T), cost_resource(R) * imports(R,Z,T) * span(T))
resource_cost_data <- read.csv(paste(results_path, "resource-params.csv", sep="")) ## TODO: automated a generic version of this
resource_cost_data <- select(resource_cost_data, resource, cost.converted)
merge_resources_cost <- merge(resources, resource_cost_data)
merge_resources_cost <- mutate(merge_resources_cost, cost = imports * cost.converted)
merge_resources_cost <- na.omit(merge_resources_cost)
cost_res <- sum(merge_resources_cost$cost, na.omit=TRUE) * 365 * 12 * 3600 # (Assume for only half the day)

### Sum the three components to get total cost
headline_cost <- 0.1 * cost_prod + 0.1 * cost_transp + cost_res

### Store the three components of total cost
store_cost_names <- c("Scenario", "Conversion processes", "Transport processes", "Resources")
store_cost_USD <- c(sub("cluster-results/", "", scenario_name), 0.1*cost_prod, 0.1*cost_transp, cost_res)
store_cost <- rbind(store_cost_names, store_cost_USD)
write.table(store_cost, paste(dir, "/component-costs.csv", sep=""), row.names=FALSE, col.names=FALSE, sep=",")

## Emissions = sum((Z,T), exports('CO2',Z,T) * span(T))
resources$season_length <- 0
resources[resources$season=="wint", ]$season_length <- 90 ## days
resources[resources$season=="sum", ]$season_length <- 90 ## days
resources[resources$season=="shoulder", ]$season_length <- 180 ## days
resource_emissions <- filter(resources, resource=="CO2") 
resource_emissions <- mutate(resource_emissions, emissions = exports * season_length * 24 * 3600) 
headline_emissions <- sum(resource_emissions$emissions)

## Waste output = sum((Z,T), exports('waste',Z,T)) +
#		  sum((Z,T), exports('biomassAgriWaste',Z,T)) +
#		  sum((Z,T), exports('digestate',Z,T)) +
#		  sum((Z,T), exports('foodWaste',Z,T)) +
#		  sum((Z,T), exports('MSW',Z,T)) +
#		  sum((Z,T), exports('vegWaste',Z,T)) + 
#		  sum((Z,T), exports('slag',Z,T)) + 
#		  sum((Z,T), exports('recyclables',Z,T)) + 
#		  sum((Z,T), exports('waste_organic',Z,T))
wastes <- c("waste",
	    "biomassAgriWaste",
	    "digestate",
	    "foodWaste",
	    "MSW",
	    "vegWaste",
	    "slag",
	    "recylcables",
	    "waste_organic")
resource_wastes <- filter(resources, resource %in% wastes)
resource_wastes <- mutate(resource_wastes, waste = exports * season_length * 24 * 3600)
headline_waste <- sum(resource_wastes$waste)

## Water consumption = sum((Z,T), imports('water',Z,T)) +
#                      sum((Z,T), imports('groundWater',Z,T))
waters <- c("water", "groundWater") ## TODO: Should we add waterPotable to this set?
resource_waters <- filter(resources, resource %in% waters)
resource_waters <- mutate(resource_waters, water = imports * season_length * 24 * 3600)
headline_water <- sum(resource_waters$water)

## Combine results together
metrics <- c("headline_cost", "headline_emissions", "headline_waste", "headline_water")
values <- c(headline_cost, headline_emissions, headline_waste, headline_water)
headlines <- data.frame(metrics, values)
headlines$scenario <- sub("cluster-results/", "", scenario_name)

headlines <- headlines[c("scenario", "metrics", "values")]

write.csv(headlines, paste(dir, "/headlines.csv", sep=""), row.names=FALSE)

###--------------------------------------------------
### More detailed plots
###--------------------------------------------------


## Plot resource imports/exports
plot_res_ImpExp <- ggplot(resources_reshaped, aes(zone, value)) +
  geom_point(aes(colour=season), position=position_dodge(width=0.6))  +
  geom_hline(yintercept=0) +
  facet_grid(Type~resource, scales="free_x", space="free") + ## TODO: add units (e.g. "[MW]") into the facet headings
  theme_bw() +
  theme(axis.text.x=element_text(hjust=1, angle=30))
plot_res_ImpExp
## Save plot
ggsave(file.path(plot_filepath, "plot_res_ImpExp.pdf"), last_plot(), width=50, units="cm")

## Plot process rates
plot_process_rates <- ggplot(processes, aes(process, zone)) +
  geom_tile(aes(alpha=rate*number)) +
  geom_text(aes(label=paste("R=", rate, "\n", "N=", number)), size=2) +
  facet_grid(~season, scales="free", space="free") +
  theme_bw() +
  theme(axis.text.x=element_text(hjust=1, angle=30))
plot_process_rates
## Save plot
ggsave(file.path(plot_filepath, "plot_process_rates.pdf"), last_plot(), height=50, units="cm")

## Plot process existence
plot_processes <- ggplot(processes, aes(season, process)) +
  geom_text(aes(label=paste(process, "\n", "(R=", rate, ", N=", number, ")", sep="")), size=2) +
  facet_wrap(~zone, ncol=2, scales="free_y") +
  theme_bw() +
  theme(axis.text.y=element_blank(),
	axis.ticks.y=element_blank())
plot_processes
## Save plot
ggsave(file.path(plot_filepath, "plot_processes.pdf"), last_plot(), height=50, units="cm")

## Re-plot process existence
plot_processes_alt <- ggplot(processes, aes(season, process)) +
  geom_tile(fill="white", colour="black") +
  geom_text(aes(label=paste("R=", rate, "\n", "N=", number)), size=2) +
  facet_wrap(~zone, ncol=3) +
  theme_bw()
plot_processes_alt
## Save plot
ggsave(file.path(plot_filepath, "plot_processes_alt.pdf"), last_plot(), height=50, units="cm")

### Plot process resource production
#plot_prod_qty <- ggplot(resource_prod_qty, aes(process, zone)) +
#  geom_tile(aes(fill=value)) +
#  facet_grid(resource~season, scales="free", space="free") +
#  scale_fill_gradient2(low = "red",
#		       high = "steelblue") +
#  theme_bw() +
#  theme(axis.text.x=element_text(hjust=1, angle=30))
#plot_prod_qty
### Save plot
#ggsave(file.path(plot_filepath, "plot_prod_qty.pdf"), last_plot(), height=50, units="cm")

## Plot process resource production
plot_prod_qty <- ggplot(resource_prod_qty, aes(zone, value)) +
  geom_point(aes(colour=season), position=position_dodge(width=0.6)) +
  geom_hline(yintercept=0) +
  facet_grid(process~resource, scales="free_x", space="free") +
  theme_bw() +
  theme(axis.text.x=element_text(hjust=1, angle=30),
	strip.text.y = element_text(angle=0))
plot_prod_qty
## Save plot
ggsave(file.path(plot_filepath, "plot_prod_qty.pdf"), last_plot(), width=50, units="cm")

## No need to plot process quality production

## Plot transport connections

plot_transp_connecns <- ggplot(isTransport, aes(zone_start, zone_end)) +
  geom_tile(aes(fill=isTransp)) +
  facet_wrap(~transp_tech) +
  theme_bw() +
  theme(axis.text.x=element_text(hjust=1, angle=30))
plot_transp_connecns
## Save plot
ggsave(file.path(plot_filepath, "plot_transp_connecns.pdf"), last_plot(), height=50, units="cm")

## Plot inter-zonal transport rates
if(dim(transport)[1] > 0){ ## Skip to prevent errors if there is no inter-zonal transportation

  plot_transp_rates <- ggplot(transport, aes(zone_start, zone_end)) +
    geom_tile(aes(alpha=rate)) +
    facet_grid(transp_tech~season, scales="free", space="free") +
    theme_bw() +
    theme(axis.text.x=element_text(hjust=1, angle=30))
  plot_transp_rates
  ## Save plot
  ggsave(file.path(plot_filepath, "plot_transp_rates.pdf"), last_plot(), height=50, units="cm")

}

### Plot inter-zonal resource flows
#plot_transp_flows <- ggplot(resource_flow_qty, aes(zone, resource)) +
#  geom_tile(aes(fill=value)) +
#  facet_grid(transp_tech~season, scales="free", space="free") +
#  scale_fill_gradient2(low = "red",
#		       high = "steelblue") +
#  theme_bw() +
#  theme(axis.text.x=element_text(hjust=1, angle=30),
#	strip.text.y=element_text(angle=0))
#plot_transp_flows
### Save plot
#ggsave(file.path(plot_filepath, "plot_transp_flows.pdf"), last_plot(), width=35, height=50, units="cm")

## Plot inter-zonal resource flows
if(dim(resource_flow_qty)[1] > 0){ ## Skip to prevent errors if there is no inter-zonal transportation

  plot_transp_flows <- ggplot(resource_flow_qty, aes(zone, value)) +
    geom_point(aes(colour=season), position=position_dodge(width=0.6)) +
    geom_hline(yintercept=0) +
    facet_grid(transp_tech~resource, scales="free_x", space="free") +
    theme_bw() +
    theme(axis.text.x=element_text(hjust=1, angle=30))
  plot_transp_flows
  ## Save plot
  ggsave(file.path(plot_filepath, "plot_transp_flows.pdf"), last_plot(), width=50, height=35, units="cm")

}

## No need to plot inter-zonal quality flows

###--------------------------------------------------
### Visualise costs
### We need to merge in the cost data from other files
###--------------------------------------------------

## Load in process costs
cost_processes <- read.csv("model/data/model-definition/process-costs.csv")

## Merge costs with process rates/numbers
process_and_costs <- merge(processes, cost_processes)

## Add to dataframe
process_and_costs <- filter(process_and_costs, rate>0)
process_and_costs <- mutate(process_and_costs, capital_sum = number * capital.test)

## Summarize dataframe accordign to processes
process_and_costs <- process_and_costs %>% group_by(process) %>% summarize(sum(number), sum(capital_sum))
process_and_costs$type <- "process"
names(process_and_costs) <- c("process", "number", "capital_sum", "type")

## Plot process costs
plot_costs <- ggplot(process_and_costs, aes(type, capital_sum)) +
  geom_bar(stat="identity", aes(fill=process)) +
  geom_text(aes(label=paste(process, " (N=", number, ")")), position="stack", check_overlap=TRUE, angle=30) +
#  facet_wrap(~season) +
  theme_bw()
plot_costs
ggsave(file.path(plot_filepath, "plot_process_costs.pdf"), last_plot(), width=25, height=50, units="cm")

###--------------------------------------------------
### Visualise resource-technology network as a lower-triangular heatmap
###--------------------------------------------------

## Get relevant processes and resources by subsetting data
proc_res <- resource_prod_qty %>% distinct(process, resource) %>% select(process, resource, value)
proc_res <- resource_prod_qty %>% distinct(process, resource) %>% select(process, resource, value, zone)

## Assign each process-resource pair is inflow or outflow
proc_res$direction <- "in"
proc_res[proc_res$value > 0, "direction"] <- "out"

## Prepare resource import-resource pairings
proc_res_imp <- resources %>% filter(imports>0) %>% select(resource, zone, imports)
proc_res_imp$process <- "imports"
proc_res_imp$direction <- "out"
names(proc_res_imp)[names(proc_res_imp)=="imports"] <- "value"
 
### Prepare resource export-resource pairings
proc_res_exp <- resources %>% filter(exports>0) %>% select(resource, zone, exports)
proc_res_exp$process <- "exports"
proc_res_exp$direction <- "in"
names(proc_res_exp)[names(proc_res_exp)=="exports"] <- "value"

## Prepare demand-resource pairings 
proc_res_dem <- demands %>% select(resource, zone, value.conv)
proc_res_dem$process <- "demand"
proc_res_dem$direction <- "in"
proc_res_dem[proc_res_dem$value.conv < 0, "direction"] <- "out"
names(proc_res_dem)[names(proc_res_dem)=="value.conv"] <- "value"

## Attached the import and export information to the proc_res dataframe
proc_res <- rbind(proc_res, proc_res_imp, proc_res_exp, proc_res_dem)

## Separate inflows and outflows into their own dataframes
proc_res_in <- filter(proc_res, direction=="in")
proc_res_out <- filter(proc_res, direction=="out")

## Remerge dataframes, such that a resource links to all possible production and consumption processes
#proc_res_expanded <- merge(proc_res_in, proc_res_out, by=c("resource", "zone"))
proc_res_expanded <- merge(proc_res_in, proc_res_out, by=c("resource"))
#proc_res_expanded <- select(proc_res_expanded, process.y, resource, process.x, zone, value.x, value.y)
proc_res_expanded <- select(proc_res_expanded, process.y, resource, process.x, value.x, value.y)
#names(proc_res_expanded) <- c("producer", "resource", "consumer", "zone", "value.x", "value.y")
names(proc_res_expanded) <- c("producer", "resource", "consumer", "value.x", "value.y")

###--------------------------------------------------
### ENA caclulations
###--------------------------------------------------

## Initialize a dataframe for ENA
ENA_calcs <- select(proc_res, -zone)

## Load and further assemble the process lookup table
procType_lookup <- read.csv("process-type-lookup.csv")
ENA_procType_lookup <- select(procType_lookup, process, sector)
ENA_procType_lookup$sector <- as.character(ENA_procType_lookup$sector)
ENA_procType_lookup <- subset(ENA_procType_lookup, sector!="top")

lookup_imports <- c("imports", "external") ## Might be able to do this manually when completing lookup table
lookup_exports <- c("exports", "external")
lookup_demand <- c("demand", "internal")
ENA_procType_lookup <- rbind(ENA_procType_lookup, lookup_imports, lookup_exports, lookup_demand)
names(ENA_procType_lookup) <- c("process", "process_sector")
      
## Load and further assemble the resource lookup table
ENA_resourceType_lookup <- read.csv("resources-sector.csv")
names(ENA_resourceType_lookup) <- c("resource", "resource_sector")

## Use lookup table to extend ENA calcs
ENA_calcs <- inner_join(ENA_calcs, ENA_procType_lookup)
ENA_calcs <- inner_join(ENA_calcs, ENA_resourceType_lookup)

ENA_calcs$from <- "initialize"
ENA_calcs$to <- "initialize"

ENA_calcs$resource_sector <- as.character(ENA_calcs$resource_sector)

## Add from-sector and to-sector columns, defined conditionally according to direction
ENA_length <- dim(ENA_calcs)[1]
for(i in 1:ENA_length){

  if(ENA_calcs$direction[i]=="out"){
      
    ENA_calcs$from[i] <- ENA_calcs$process_sector[i]
    ENA_calcs$to[i] <- ENA_calcs$resource_sector[i]
  }
  else{
    ENA_calcs$from[i] <- ENA_calcs$resource_sector[i]
    ENA_calcs$to[i] <- ENA_calcs$process_sector[i]
  }
}

## Merge exergy-conversion factors into calculation table
exergy_lookup <- read.csv("resource-exergy-lookup.csv")
exergy_lookup[7] <- abs(exergy_lookup[7]) ## TEST: remove negative exergy flows

## Table uses values below for contaminant concentrations
### water type	BOD [mg/l]
### influent	0.000006
### drinking 	0.000001
### wastewater 	0.000012
### WaterNonPotable 	0.000012
### water_pure	0.0000005
exergy_lookup <- select(exergy_lookup, resource, exergy.conv.MjperX)
names(exergy_lookup) <- c("resource", "exergy")

ENA_calcs <- merge(ENA_calcs, exergy_lookup)

## Calculate exergy flow for each transfer
ENA_calcs <- mutate(ENA_calcs, value = value * exergy)

## Calculate exergy metrics
exergy_calcs <- ENA_calcs %>% filter(process %in% c("imports", "exports", "demand")) %>% select(process, resource, value)
exergy_calcs_temp <- exergy_calcs

## TEMPORARY: REMOVE ANOMALIES FROM THE EXERGY RESULTS
if(scenario_name=="cluster-results/wildcard_current_minCost"){
  exergy_calcs <- filter(exergy_calcs, resource!="CO2")
}

exergy_calcs <- exergy_calcs %>% group_by(process) %>% summarise(sum(value))
alpha_ex_prod <- exergy_calcs$sum[1]
alpha_ex_in <- exergy_calcs$sum[3]
alpha_ex_waste <- exergy_calcs$sum[2]
alpha_ex_irrev <- alpha_ex_in - (alpha_ex_prod + alpha_ex_waste)
ex_eff <- (alpha_ex_prod / alpha_ex_in) * 100

## Store and save results
exergy_results_headings <- c("scenario", "in", "prod", "waste", "irrev", "eff")
exergy_results_value <- c(sub("cluster-results/", "", scenario_name), alpha_ex_in, alpha_ex_prod, alpha_ex_waste, alpha_ex_irrev, ex_eff)
exergy_results <- rbind(exergy_results_headings, exergy_results_value)
write.table(exergy_results, paste(dir, "/exergy-results.csv", sep=""), row.names=FALSE, col.names=FALSE, sep=",")

## Do the ENA
ENA_calcs <- select(ENA_calcs, from, to, value)
ENA_calcs <- ENA_calcs %>% group_by(from, to) %>% summarize(total=sum(value))
## TODO: might need to work out enumerated representaton of departments HERE

## Get sector names and number of sectors
sectors_names <- unique(c(ENA_calcs$from, ENA_calcs$to))
sectors_num <- length(sectors_names)

ENA_calcs <- acast(ENA_calcs, from~to, value.var="total")
ENA_calcs[is.na(ENA_calcs)] <- 0

ena.direct <- function(F, N, names){

  D <- matrix(nrow=N, ncol=N)
  z <- matrix(nrow=N, ncol=0)


  for (i in 1:N){
    z[i] <- sum(F[i, ])
    for (j in 1:N){
      D[i, j] <- (F[i, j] - F[j, i]) / z[i]
    }
  }
  D[!is.finite(D)] <- 0

  rownames(D) <- names
  colnames(D) <- names
  return(D)
}

ena.utility <- function(D, N, names){
  I <- diag(N)
  U = solve(I - D)

  rownames(U) <- names
  colnames(U) <- names
  return(U)
}

## Calculate mutualism index M
ena.mutualism <- function(U,D){

  M <- data.frame(D=c(0), U=c(0))

  signs <- sign(U)
  s.plus <- sum(signs>0)
  s.minus <- sum(signs<0)
  M$U <- s.plus / s.minus ## See Figure 6 of @Zhang2009b
  M$D <- sum(sign(D>0)) / sum(sign(D<0))  ## See Figure 6 of @Zhang2009b
  return(M)
}

## Perform ecological network analysis
direct <- ena.direct(ENA_calcs, sectors_num, sectors_names)
utility <- ena.utility(direct, sectors_num, sectors_names)
mutualism <- ena.mutualism(utility, direct)


## Store mutualism results
ENA_results_heading <- c("scenario", "Direct", "Utility" )
ENA_results_values <- c(sub("cluster-results/", "", scenario_name), mutualism$D, mutualism$U)
ENA_results <- rbind(ENA_results_heading, ENA_results_values)
write.table(ENA_results, paste(dir, "/ENA.csv", sep=""), row.names=FALSE, col.names=FALSE, sep=",")

## Combine Beijing and London mutualism
direct <- melt(sign(direct))
direct$scenario <- sub("cluster-results/", "", scenario_name)
direct$type <- "Direct"

utility <- melt(sign(utility))
utility$scenario <- sub("cluster-results/", "", scenario_name)
utility$type <- "Utility"

ENA_results <- rbind(direct, utility)
colnames(ENA_results) <- c("Input", "Output", "value", "scenario", "type")

write.table(ENA_results, paste(dir, "/ena-matrices.csv", sep=""), row.names=FALSE, col.names=FALSE, sep=",")

## Refaactor compartments values to +,-,0
ENA_results <- transform(ENA_results,
		       value=factor(value, levels=c(-1,0,1),
				    labels=c("-","0","+")))

plot_ENA <- ggplot(ENA_results, aes(Input, Output)) +
  geom_tile(fill=NA, color="black", na.value=NA) +
  geom_text(aes(label=value)) +
  facet_wrap(~type) +
  theme_bw() +
  theme(axis.text.x = element_text(angle=30, hjust=1),
	strip.text = element_text(face="bold.italic"))
plot_ENA
ggsave(file.path(plot_filepath, "plot_ENA.pdf"), last_plot(), width=50, units="cm")

###--------------------------------------------------
### Return to plotting the resource-technology heatmap
###--------------------------------------------------

## Create a blank dataframe of all possible process-process pairings
#process_list <- unique(resource_prod_qty$process) << NOTE: list doesn't include "imports"
process_list <- unique(proc_res$process) # << NOTE: includes "imports"
blank_df <- merge(process_list, process_list)
names(blank_df) <- c("producer", "consumer")

## Match the relavent process-process rows with the relavent resources 
proc_res_network <- merge(blank_df, proc_res_expanded, all=TRUE)
proc_res_network <- droplevels(proc_res_network)

## Assign each process a number according to its plotted order (i.e. alphabetical)
process_list <- data.frame(process_list)
process_list$num <- as.numeric(row.names(process_list))
names(process_list) <- c("name", "num")

## Add the above numbers to the main dataframe
proc_res_network <- merge(proc_res_network, process_list,  by.x="producer", by.y= "name")
proc_res_network <- merge(proc_res_network, process_list,  by.x="consumer", by.y= "name")
#names(proc_res_network) <- c("consumer", "producer", "resource", "zone", "value.x", "value.y", "num.prod", "num.cons")
names(proc_res_network) <- c("consumer", "producer", "resource", "value.x", "value.y", "num.prod", "num.cons")


## Introduce two new process columns
proc_res_network$process_a <- proc_res_network$producer
proc_res_network$process_b <- proc_res_network$consumer

## Identify the left-hand-side upper-triangle (num.cons > num.prod)
switch <- proc_res_network$num.cons > proc_res_network$num.prod

## Switch LHS upper-triangle pairings to RHS lower-triangle (consumer identity --> process_a, and producer identity --> process_b)
proc_res_network$process_a[switch] <- proc_res_network$consumer[switch]
proc_res_network$process_b[switch] <- proc_res_network$producer[switch]

## Identify resource-resource pairings on the diagonal (to plot labels)
ids <- filter(proc_res_network, producer==consumer)
ids <- select(ids, process_a, process_b)

## Plot as a right-hand side lower triangle
## TODO: colour text according to direction of flow
## TODO: colour imports and exports differently
## TODO: abbreviate names of processes and resources
## TODO: groups together categories of processes and resources
## TODO: add imports, exports and demands
plot_proc_res_network <- ggplot(proc_res_network, aes(process_a, process_b)) +
  geom_tile(colour="white") +
  geom_text(aes(label=resource, colour=resource), size=3) +
  geom_tile(data=ids, fill="grey") +
  geom_text(data=ids, aes(label=process_a), size=3, hjust=1) +
  theme_bw() +
  theme(axis.text.x=element_blank(),
  	axis.text.y=element_blank(),
  	axis.ticks=element_blank(),
  	axis.title=element_blank(),
	panel.grid=element_blank(),
	legend.position="none")
plot_proc_res_network
## Save plot
ggsave(file.path(plot_filepath, "plot_RTN.pdf"), last_plot(), width=50, units="cm")

###--------------------------------------------------
### Code to setup the conversion of RTN data into a SNA-type plot
###--------------------------------------------------

## Get data required for matrix to plot network
#proc_res_sna <- select(proc_res_network, consumer, producer, resource, zone)
proc_res_sna <- select(proc_res_network, consumer, producer, resource)
proc_res_sna$resource <- as.numeric(proc_res_sna$resource)

## Replace resource names with 1 (otherwise zero)
proc_res_sna[is.na(proc_res_sna$resource), "resource"] <- 0
proc_res_sna[proc_res_sna$resource>0, "resource"] <- 1

## Remove repeated entries
proc_res_sna <- unique(proc_res_sna)

###--------------------------------------------------
### SNA-type plot -- whole network
###--------------------------------------------------

### Convert dataframe to matrix
#proc_res_matrix <- dcast(proc_res_sna, consumer~producer, value.var="resource") ## << THIS CONVERSION DOES NOT SEEM TO BE HAPPENING CORRECTLY (ALL 1s), Dim is 258 (i.e. not 'square' at 256 as expected?)
#
### Appropriately name rows and columns
#proc_res_matrix <- proc_res_matrix[, -1]
#colnames(proc_res_matrix) <- 1:ncol(proc_res_matrix)

## ALTERNATIVE: to commented-out code, above (convert dataframe to matrix)
proc_res_matrix <- proc_res_sna %>% filter(resource==1) %>% select(consumer, producer)
proc_res_matrix <- table(proc_res_matrix)

## Use lookup tables to assign a sector to each process [TODO: move lookup code to the general part?]
#procType_lookup <- read.csv("process-type-lookup.csv")

sectors_lookup <- rbind(c("energy", "red"),
			c("water", "blue"),
			c("waste", "black"),
			c("top", "orange"),
			c("other", "green"))
sectors_lookup <- data.frame(sectors_lookup)
colnames(sectors_lookup) <- c("sector", "node_vector")

procType_sectors <- inner_join(procType_lookup, sectors_lookup)

## Slight fudge to get sort procType_sectors into the correct order (gplot uses process_list order)
processList_lookup <- process_list
colnames(processList_lookup) <- c("process", "num")
procType_sectors <- inner_join(processList_lookup, procType_sectors)

## Vector of node colours (for the SNA plot)
node_vector <- as.character(procType_sectors$node_vector)

## Attributes of plot
layout <-  c("fruchtermanreingold", "kamadakawai", "spring", "circle", "eigen", "hall", "mds", "princoord", "target")

## Plot network
library(sna)
pdf(file.path(plot_filepath, "plot_RTN_SNA.pdf"), width=15) ## For saving
gplot(proc_res_matrix,
      mode=layout[1],
      gmode="graph",
#      label = process_list$name,
      label = procType_sectors$display_name,
      label.pos = 1,
      jitter=FALSE,
      thresh=0,
#      vertex.sides = 0, ## << Set if vertiex to be made invisible
      vertex.col = node_vector, ## << Add this back if we want to colour nodes
#      label.col = node_vector, ## << Add this back if we want to colour nodes
      edge.col = rgb(220, 217, 217, maxColorValue=255), ## Grey edges
      displaylabels = TRUE)
dev.off() ## End save procecdure

###--------------------------------------------------
### SNA-type plot -- spatially disaggregated
###--------------------------------------------------

zonal_sna <- function(zone_name){
  ## Function to plot process network for each zone

  ## Filter out process-resource interactions for "zone_name"
  sna_zone <- filter(proc_res_sna, zone==zone_name)

  ## Convert dataframe to matrix
  proc_matrix_zone <- dcast(sna_zone, consumer~producer, value.var="resource")
  
  ## Appropriately name rows and columns
  proc_matrix_zone <- proc_matrix_zone[, -1]
  colnames(proc_matrix_zone) <- 1:ncol(proc_matrix_zone)
  
  pdf(file.path(plot_filepath, paste("plot_RTN_SNA_", zone_name, ".pdf", sep="")), width=15) ## For saving
  gplot(proc_matrix_zone,
        mode=layout[1],
        gmode="graph",
  #      label = process_list$name,
        label = procType_sectors$display_name,
        label.pos = 1,
        jitter=FALSE,
        thresh=0,
  #      vertex.sides = 0, ## << Set if vertiex to be made invisible
        vertex.col = node_vector, ## << Add this back if we want to colour nodes
  #      label.col = node_vector, ## << Add this back if we want to colour nodes
        edge.col = rgb(220, 217, 217, maxColorValue=255), ## Grey edges
        displaylabels = TRUE)
  dev.off() ## End save procecdure
}

## Apply zonal_sna function to each zone
zonal_sna("factory_assembly")
zonal_sna("hospital")
zonal_sna("northDistrict")
zonal_sna("reserved")
zonal_sna("dormitories")
zonal_sna("factory_blades")
zonal_sna("multifunction")
zonal_sna("quality")
zonal_sna("school")
zonal_sna("tech")
zonal_sna("residential")
zonal_sna("factory")
zonal_sna("energyIsland")



###--------------------------------------------------
### TODO: Alternative SNA-type plot (includes resources)
###--------------------------------------------------

## Get data required for matrix to plot network
proc_res_sna <- select(proc_res_network, consumer, producer, resource)

## Reshape into process-->resource, or resource-->process (separate, then merge)
proc_res_sna_tmp1 <- select(proc_res_sna, consumer, resource)
proc_res_sna_tmp2 <- select(proc_res_sna, resource, producer)
names(proc_res_sna_tmp1) <- c("start", "end")
names(proc_res_sna_tmp2) <- c("start", "end")
proc_res_sna_long <- rbind(proc_res_sna_tmp1, proc_res_sna_tmp2)

#proc_res_sna_long$value <- 0
#
#NA_end <- proc_res_sna_long$end!="<NA>"
#NA_end[is.na(NA_end)] <- "FALSE"
#NA_end <- as.logical(NA_end)
#
#proc_res_sna_long$value[NA_end] <- 1
#
#NA_start <- proc_res_sna_long$start!="<NA>"
#NA_start[is.na(NA_start)] <- "FALSE"
#NA_start <- as.logical(NA_start)
#
#proc_res_sna_long$value[NA_start] <- 1
#
#NA_any <- proc_res_sna_long$end!="<NA>" | proc_res_sna_long$start!="<NA>"

## Remove <NA> rows
proc_res_sna_long <- filter(proc_res_sna_long, start!="<NA>", end!="<NA>")
proc_res_sna_long <- unique(proc_res_sna_long)

## Assign a value of 1 to remaining process-->resource and resource-->process pairs
proc_res_sna_long$value <- 1

## Create a blank dataframe of all possible process-resource pairings
proc_res_list <- as.vector(unique(cbind(as.character(proc_res_sna_long$start, proc_res_sna_long$end))))
blank_proc_res <- merge(proc_res_list, proc_res_list)
names(blank_proc_res) <- c("start", "end")

## Match the relavent process-resource rows with the relavent resources 
foo <- merge(blank_proc_res, proc_res_sna_long, all=TRUE)

## Convert dataframe to matrix
proc_sna_matrix <- dcast(proc_res_sna_long, start~end, value.var="value")
proc_sna_matrix <- dcast(foo, start~end, value.var="value")

## TODO: make a square matrix
rownames(proc_sna_matrix) <- proc_sna_matrix[, 1]

## Appropriately name rows and columns
proc_sna_matrix <- proc_sna_matrix[, -1]
label_names <- colnames(proc_sna_matrix)
colnames(proc_sna_matrix) <- 1:ncol(proc_sna_matrix)


## Plot network
#pdf(file.path(plot_filepath, "plot_RTN_SNA.pdf"), width=15) ## For saving
gplot(proc_sna_matrix,
      mode=layout[1],
      gmode="graph",
      label = label_names,
      label.pos = 1,
      jitter=FALSE,
      thresh=0,
#      vertex.col = node_vector, ## << Add this back if we want to colour nodes
      edge.col = rgb(220, 217, 217, maxColorValue=255), ## Grey edges
      displaylabels = TRUE)
#dev.off() ## End save procecdure

## TODO: plot SNA


###--------------------------------------------------
## SEASONAL SNA PLOTS
###--------------------------------------------------

###--------------------------------------------------
### Visualise resource-technology network as a lower-triangular heatmap
###--------------------------------------------------

## Get relevant processes and resources by subsetting data
proc_res <- resource_prod_qty %>% distinct(process, resource, season) %>% select(process, resource, value, season)

## Assign each process-resource pair is inflow or outflow
proc_res$direction <- "in"
proc_res[proc_res$value > 0, "direction"] <- "out"

## Prepare resource import-resource pairings
proc_res_imp <- resources %>% filter(imports>0) %>% select(resource, season, imports)
proc_res_imp$process <- "imports"
proc_res_imp$direction <- "out"
names(proc_res_imp)[names(proc_res_imp)=="imports"] <- "value"
 
### Prepare resource export-resource pairings
proc_res_exp <- resources %>% filter(exports>0) %>% select(resource, season, exports)
proc_res_exp$process <- "exports"
proc_res_exp$direction <- "in"
names(proc_res_exp)[names(proc_res_exp)=="exports"] <- "value"

## Prepare demand-resource pairings 
proc_res_dem <- demands %>% select(resource, season, value.conv)
proc_res_dem$process <- "demand"
proc_res_dem$direction <- "in"
proc_res_dem[proc_res_dem$value.conv < 0, "direction"] <- "out"
names(proc_res_dem)[names(proc_res_dem)=="value.conv"] <- "value"

## Attached the import and export information to the proc_res dataframe
proc_res <- rbind(proc_res, proc_res_imp, proc_res_exp, proc_res_dem)

## Separate inflows and outflows into their own dataframes
proc_res_in <- filter(proc_res, direction=="in")
proc_res_out <- filter(proc_res, direction=="out")

## Remerge dataframes, such that a resource links to all possible production and consumption processes
proc_res_expanded <- merge(proc_res_in, proc_res_out, by=c("resource"))

proc_res_expanded <- select(proc_res_expanded, season.x, process.y, resource, process.x, value.x, value.y)
#names(proc_res_expanded) <- c("producer", "resource", "consumer", "zone", "value.x", "value.y")
names(proc_res_expanded) <- c("season", "producer", "resource", "consumer", "value.x", "value.y")


###--------------------------------------------------
### Return to plotting the resource-technology heatmap
###--------------------------------------------------

## Create a blank dataframe of all possible process-process pairings
#process_list <- unique(resource_prod_qty$process) << NOTE: list doesn't include "imports"
process_list <- unique(proc_res$process) # << NOTE: includes "imports"
blank_df <- merge(process_list, process_list)
names(blank_df) <- c("producer", "consumer")

## Match the relavent process-process rows with the relavent resources 
proc_res_network <- merge(blank_df, proc_res_expanded, all=TRUE)
proc_res_network <- droplevels(proc_res_network)

## Assign each process a number according to its plotted order (i.e. alphabetical)
process_list <- data.frame(process_list)
process_list$num <- as.numeric(row.names(process_list))
names(process_list) <- c("name", "num")

## Add the above numbers to the main dataframe
proc_res_network <- merge(proc_res_network, process_list,  by.x="producer", by.y= "name")
proc_res_network <- merge(proc_res_network, process_list,  by.x="consumer", by.y= "name")
#names(proc_res_network) <- c("consumer", "producer", "resource", "zone", "value.x", "value.y", "num.prod", "num.cons")
names(proc_res_network) <- c("consumer", "producer", "season", "resource", "value.x", "value.y", "num.prod", "num.cons")


## Introduce two new process columns
proc_res_network$process_a <- proc_res_network$producer
proc_res_network$process_b <- proc_res_network$consumer

## Identify the left-hand-side upper-triangle (num.cons > num.prod)
switch <- proc_res_network$num.cons > proc_res_network$num.prod

## Switch LHS upper-triangle pairings to RHS lower-triangle (consumer identity --> process_a, and producer identity --> process_b)
proc_res_network$process_a[switch] <- proc_res_network$consumer[switch]
proc_res_network$process_b[switch] <- proc_res_network$producer[switch]


###--------------------------------------------------
### Code to setup the conversion of RTN data into a SNA-type plot
###--------------------------------------------------

## Get data required for matrix to plot network
#proc_res_sna <- select(proc_res_network, consumer, producer, resource, zone)
proc_res_sna <- select(proc_res_network, season, consumer, producer, resource)
proc_res_sna$resource <- as.numeric(proc_res_sna$resource)

## Replace resource names with 1 (otherwise zero)
proc_res_sna[is.na(proc_res_sna$resource), "resource"] <- 0
proc_res_sna[proc_res_sna$resource>0, "resource"] <- 1

## Remove repeated entries
proc_res_sna <- unique(proc_res_sna)

###--------------------------------------------------
### SNA-type plot -- whole network
###--------------------------------------------------

### Convert dataframe to matrix
proc_res_matrix <- proc_res_sna %>% filter(resource==1) %>% select(consumer, producer)
proc_res_matrix <- table(proc_res_matrix)

## Use lookup tables to assign a sector to each process [TODO: move lookup code to the general part?]
#procType_lookup <- read.csv("process-type-lookup.csv")

sectors_lookup <- rbind(c("energy", "red"),
			c("water", "blue"),
			c("waste", "black"),
			c("top", "orange"),
			c("other", "green"))
sectors_lookup <- data.frame(sectors_lookup)
colnames(sectors_lookup) <- c("sector", "node_vector")

procType_sectors <- inner_join(procType_lookup, sectors_lookup)

## Slight fudge to get sort procType_sectors into the correct order (gplot uses process_list order)
processList_lookup <- process_list
colnames(processList_lookup) <- c("process", "num")
procType_sectors <- inner_join(processList_lookup, procType_sectors)

## Vector of node colours (for the SNA plot)
node_vector <- as.character(procType_sectors$node_vector)

## Attributes of plot
layout <-  c("fruchtermanreingold", "kamadakawai", "spring", "circle", "eigen", "hall", "mds", "princoord", "target")

## Plot network
library(sna)
pdf(file.path(plot_filepath, "plot_RTN_SNA.pdf"), width=15) ## For saving
gplot(proc_res_matrix,
      mode=layout[1],
      gmode="graph",
#      label = process_list$name,
      label = procType_sectors$display_name,
      label.pos = 1,
      jitter=FALSE,
      thresh=0,
#      vertex.sides = 0, ## << Set if vertiex to be made invisible
      vertex.col = node_vector, ## << Add this back if we want to colour nodes
#      label.col = node_vector, ## << Add this back if we want to colour nodes
      edge.col = rgb(220, 217, 217, maxColorValue=255), ## Grey edges
      displaylabels = TRUE)
dev.off() ## End save procecdure
