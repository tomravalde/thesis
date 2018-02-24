# Build <process>.gms from <process>.yaml and information in ../resources

# Load libraries of resources and processes
library(yaml)

## Load in each resource YAML file as a list object
library(tools)
resources <- file_path_sans_ext(list.files("resources-yaml/"))
resource_data <- resources # Initilize (see below)

for(r in 1:length(resources)){

  name <- resources[r]
  filename <- paste("resources-yaml/", name, ".yaml", sep="")
  data <- yaml.load_file(filename)
  resource_data[r] <- assign(name, data)

}
resource_data <- as.character(resource_data)




## Load process libary
processes <- file_path_sans_ext(list.files("processes-yaml", pattern = "\\.yaml"))
processes_data <- processes # Initialize (see below)
for(p in 1:length(processes)){

  name <- processes[p]
  filename <- paste("processes-yaml/", name, ".yaml", sep="")
  data <- yaml.load_file(filename) ## Problem enters here, because of the process name?
  processes_data[p] <- assign(name, data)
}
processes_data <- as.character(processes_data)

process_head_rate <- function(directory, PROCESS){
  ## Prints header information and rate parameter for specified PROCESS

  sink(paste(directory, PROCESS$process, ".gms", sep=""))
  
  cat("*", PROCESS$process)
  cat("\n")
  
  cat("PARAMETER")
  cat("\n")
  cat("rate_process_max(P,T);") ## TODO: Add in for temporal version of model
  cat("\n")

  for(rt in 1:length(PROCESS$rate)){

    season <- names(PROCESS$rate[rt])
    cat("rate_process_max('", PROCESS$process,"', '", season, "') = ",
	PROCESS$rate[[rt]], ";", sep="", "\n")
  }

}




## Function to build <process>.gms for specified PROCESS
gams_builder <- function(PROCESS){

process_head_rate("processes-praq-gams/", PROCESS)

## Print consumption-production values (loop over all resources, i = 1,2,3,...,N)
cat("PARAMETER")
cat("\n")
cat("coeff_process_praq(P,R,Q);")
cat("\n")

for(i in 1:length(PROCESS$resources)){

  resource <- get(names(PROCESS$resources[i]))

  for(j in 1:length(resource$quality)){

  name <- as.character(resource[[1]])

    cat("coeff_process_praq('", PROCESS$process,"', '",
        name,"', '",
	names(resource$quality[j]), "') = ",
	as.numeric(PROCESS$resources[[i]]) * resource$quality[[j]], ";",
	sep="")
    cat("\n")

  }
}
 

sink()
}


## Apply gams_builder over all processes to generate <process>.gms in the current directory
for(p in 1:length(processes_data)){
  PROCESS <- get(processes_data[p])
  gams_builder(PROCESS)
}
