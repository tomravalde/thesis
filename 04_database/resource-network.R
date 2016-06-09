# This script is run in paper.Rmd (if it hasn't been suppressed): base::source("resource-network.R")

# Inter-sectoral plot for whole network

## Function returns 1 for a process has specified resource input or output
flowMod <- function(resource, direction, process_name){

  PROCESS <- filter(processes, process.name==process_name)
  if(direction=="in"){
    TF <- PROCESS$plot_name == resource & PROCESS$value<0
  }
  else {
    TF <- PROCESS$plot_name == resource & PROCESS$value>0}
  flow_direction <- "TRUE" %in% TF
  return(flow_direction)
}

# Merge the tidied (and combined) process names with the process database
resources_lookup <- read.csv("04_database/resources-tidy-lookup.csv")
processes <- merge(processes, resources_lookup, by.x="resource", by.y="database_name")

processes <- filter(processes, plot_name!="REMOVE")

# Initialise vectors to store function output for each sector
resources <- sort(unique(processes$plot_name))
R <- length(resources)

# Build empty vectors for all resource inputs and resource outputs
blank <- vector()
process_names <- as.character(unique(processes$process.name))
N <- length(process_names)
for(r in 1:R){
  names_in <- paste("pr_", resources[r], "_in", sep="")
  names_out <- paste("pr_", resources[r], "_out", sep="")
  assign(names_in, c(blank, N))
  assign(names_out, c(blank, N))
}

# Apply function to all sectoral inputs and outputs
process_names <- as.character(unique(processes$process.name))
P <- length(process_names)

# Assemble vectors of all the resource input and resource ouput possibilities (E.g. "pr_algaeDry_out")
all <- ls(pattern = "pr_")
ins <-  all[c(grep("_in", all))]
outs <- all[c(grep("_out", all))]

## Populate "pr_algae_in" etc. with 1s and 0s to indcate resource inputs and outputs for each process
temp_in <- c(blank, P)
temp_out <- c(blank, P)

for(r in 1:R){

  resource <- resources[r]

  for(p in 1:P){

    process_name <- process_names[p]
    temp_in[p]  <- flowMod(resource, "in", process_name) ## TODO: ERROR: Problems here
    temp_out[p] <- flowMod(resource, "out", process_name)

  }

  assign(ins[r],  temp_in) # E.g. pr_elec_in <- c(1,1,0,1,...,0)
  assign(outs[r], temp_out)

}

## Automated assembly of dataframe indicated inputs and outputs for each process
interactions_in  <- data.frame(process_names) # Initialise
interactions_out <- data.frame(process_names)

for(r in 1:R){

	interactions_in  <- data.frame(interactions_in, get(ins[r]))
	interactions_out <- data.frame(interactions_out, get(outs[r]))

	colnames(interactions_in)[r+1]  <- ins[r]
	colnames(interactions_out)[r+1] <- outs[r]
}
interactions <- inner_join(interactions_in, interactions_out, by="process_names")


## Build function which identifies processes with specified resource input-output pairings
inter_ij <- function(res_i, res_j){
  links <- nrow(filter(interactions, res_i==1 & res_j==1))
  return(links)
}

## Build link_matrix to store the number of links between each resource process input-output pairing
link_matrix <- matrix(, R, R)

for(i in 1:R){
  for(j in 1:R){
    link_matrix[i, j] <- inter_ij(get(ins[i]), get(outs[j]))
  }
}
