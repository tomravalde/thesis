# Build <transport-process>.gms from <transport-process>.yaml and information in ../resources


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
processes <- file_path_sans_ext(list.files("transport-yaml", pattern = "\\.yaml"))
processes_data <- processes # Initialize (see below)
for(p in 1:length(processes)){

  name <- processes[p]
  filename <- paste("transport-yaml/", name, ".yaml", sep="")
  data <- yaml.load_file(filename)
  processes_data[p] <- assign(name, data)
}
processes_data <- as.character(processes_data)

process_head_rate <- function(directory, PROCESS){
  ## Prints header information and rate parameter for specified PROCESS

  sink(paste(directory, PROCESS$process, ".gms", sep=""))
  
#  cat("*", PROCESS$process)
#  cat("\n")
#  
#  cat("PARAMETER")
#  cat("\n")
#  #cat("rate_process_max(P,T);") ## TODO: Add in for temporal version of model
#  cat("rate_transp_max(TT);")
#  cat("\n")
#  #cat("rate_process_max('", PROCESS$process,"', 'wint') = ", as.character(PROCESS$rate), ";", sep="") ## Add in for temporal version of model
#  cat("rate_transp_max('", PROCESS$process,"') = ", as.character(PROCESS$rate), ";", sep="")
#  cat("\n")

}




## Function to build <process>.gms for specified PROCESS
gams_builder <- function(PROCESS){

process_head_rate("transport-praq-gams/", PROCESS)

## Print consumption-production values (loop over all resources, i = 1,2,3,...,N)
cat("PARAMETER")
cat("\n")
cat("coeff_transp_qty_src_praq(TT,R,Q);")
cat("\n")

for(i in 1:length(PROCESS$inputs)){

  input <- get(names(PROCESS$inputs[i]))

  for(j in 1:length(input$quality)){

  name <- as.character(input[[1]])

    cat("coeff_transp_qty_src_praq('", PROCESS$process,"', '",
        name,"', '",
	names(input$quality[j]), "') = ",
	PROCESS$inputs[[i]] * input$quality[[j]], ";",
	sep="")
    cat("\n")
  }
}

cat("PARAMETER")
cat("\n")
cat("coeff_transp_qty_dest_praq(TT,R,Q);")
cat("\n")

for(i in 1:length(PROCESS$outputs)){

  output <- get(names(PROCESS$outputs[i]))

  for(j in 1:length(output$quality)){

  name <- as.character(output[[1]])

    cat("coeff_transp_qty_dest_praq('", PROCESS$process,"', '",
        name,"', '",
	names(output$quality[j]), "') = ",
	PROCESS$outputs[[i]] * output$quality[[j]], ";",
	sep="")
    cat("\n")

  }
}
 
cat("PARAMETER")
cat("\n")
cat("coeff_transp_dist_src_praq(R,Q,TT);")
cat("\n")

for(i in 1:length(PROCESS$dist_source)){

  input <- get(names(PROCESS$dist_source[i]))

  for(j in 1:length(input$quality)){

  name <- as.character(input[[1]])

    cat("coeff_transp_dist_src_praq('", name,"', '",
        names(input$quality[j]),"', '",
	PROCESS$process, "') = ",
	PROCESS$dist_source[[i]] * input$quality[[j]], ";",
	sep="")
    cat("\n")
  }
}
 
cat("PARAMETER")
cat("\n")
cat("coeff_transp_dist_dest_praq(R,Q,TT);")
cat("\n")

for(i in 1:length(PROCESS$dist_dest)){

  output <- get(names(PROCESS$dist_dest[i]))

  for(j in 1:length(output$quality)){

  name <- as.character(output[[1]])

    cat("coeff_transp_dist_dest_praq('", name,"', '",
        names(output$quality[j]),"', '",
	PROCESS$process, "') = ",
	PROCESS$dist_dest[[i]] * output$quality[[j]], ";",
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
