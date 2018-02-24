# Identify unique resources from the processes in the YAML library. (We then have to make scripts for these)

library(yaml)

resources <- c() # Initialize
processes <- list.files("processes-yaml")
transport <- list.files("transport-yaml")
P <- length(processes)
T <- length(transport)

for(p in 1:P){

  filename <- paste("processes-yaml/", processes[p], sep="")
  PROCESS <- yaml.load_file(filename)
  resources <- c(resources, names(PROCESS$resources))
}

resources <- unique(resources)
R <- length(resources)

# Make placeholder resource-yaml/<resource>.yaml files

placeholder_resources <- function(RESOURCE){
  ## Writes a <resource>.yaml file with placeholder values which can be modified manually later

  filename <- paste("resources-yaml/", RESOURCE, ".yaml", sep="")

  sink(filename)

  cat("resource: ", RESOURCE, "\n", sep="") 
  cat("quality:", "\n", sep="") 
  cat("        mass: 1", "\n", sep="") 
  cat("        energy: 1", "\n", sep="") 
  cat("        contam: 1", "\n", sep="") 
  cat("cost: 0", "\n", sep="") 
  cat("notes:", "\n", sep="") 

  sink()

}

## Apply function
lapply(resources, placeholder_resources)

# Write a CSV lists of resources, transport processes and conversion processes (which can be copied and added to)

csv_list <- function(ITEM){
  cat(ITEM, "\n")
}

sink("data-csv/resources.csv")
for(r in 1:R){
  csv_list(resources[r])
}
sink()

sink("data-csv/processes.csv")
for(p in 1:P){
  csv_list(processes[p])
}

sink("data-csv/transport.csv")
for(t in 1:T){
  csv_list(transport[t])
}
