###--------------------------------------------------
### T. Ravalde
### Last edited: 2017/09/06
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

## Select Season
#SEASON <- "wint"
#SEASON <- "sum"
SEASON <- "shoulder"


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

## Select season
resources_reshaped <- filter(resources_reshaped, season==SEASON)

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
proc_res_expanded <- merge(proc_res_in, proc_res_out, by=c("resource"))
proc_res_expanded <- select(proc_res_expanded, process.y, resource, process.x, value.x, value.y)
names(proc_res_expanded) <- c("producer", "resource", "consumer", "value.x", "value.y")


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




###--------------------------------------------------
### Run code up to here, then run the next code to plot and save the SNA plot, and then run the first section of code again, with a different season
###--------------------------------------------------

## Plot network
library(sna)
pdf(file.path(plot_filepath, paste("plot_RTN_SNA_", SEASON, ".pdf")), width=15) ## For saving
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
