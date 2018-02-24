###--------------------------------------------------
### T. Ravalde
### Last edited: 2016/03/05
###--------------------------------------------------

# Functions which print GAMS code, used in scripts to build the model

###--------------------------------------------------
### To print SET related code
###--------------------------------------------------

sets_head <- function(set, index){
  # Function to print introductory text for specified 'set' with specified 'index' (both strings)

  cat("SETS")
  cat("\n")
  cat(index, set)
  cat("\n")
  cat("/")
  cat("\n")

}

print_set_item <- function(toPrint){
  ## Prints 'toPrint' and then starts a new line
  cat(toPrint)
  cat("\n")
}

print_all_set_items <- function(set_name, index, set_items){
  sets_head(set_name, index)
  ## lapplies print_set_item over a vector of items (i.e. prints them all), and then prints commands to appropriately end the set definition
  lapply(set_items, print_set_item)
  cat("/;")
  cat("\n")
}

###--------------------------------------------------
### To print PARAMETER related code
###--------------------------------------------------

parameter_head <- function(parameter){
  # Function to print introductory text for specified 'parameter' (string)

  cat("PARAMETER")
  cat("\n")
  cat(parameter)
  cat("\n")
  cat("/")
  cat("\n")

}

parameter_value <- function(data, name, value){
  # Function to print introductory text for specified 'parameter' (string)

  N <- nrow(data)	

  for(i in 1:N){
    name_print <- as.character(data[i, name])
    value_print <- as.character(data[i, value])
    cat(name_print, value_print)
    cat("\n")
  }

  cat("/;")
  cat("\n")
}

parameter_value_temporal <- function(data, name, time, value){
  # Function to print introductory text for specified 'parameter' (string)

  N <- nrow(data)	

  for(i in 1:N){
    name_print <- as.character(data[i, name])
    value_print <- as.character(data[i, value])
    cat(name_print, " .", time, " ", value_print, sep="")
    cat("\n")
  }
}

demand_quality <- function(RESOURCE){
  ## For any specified RESOURCE demand, this function calculates and prints the demand for each of the resource's qualities

  resource <- RESOURCE$resource 
  demand_r <- resource_params[resource_params$resource==resource, "demand_r"]

  Q <- length(RESOURCE$quality)
  for(q in 1:Q){
    quality <- names(RESOURCE$quality[q])
    value <- RESOURCE$quality[[q]]
    cat(resource, " .", quality, " ", value*demand_r, sep="")
    cat("\n")
 }
}

resource_quality <- function(RESOURCE){
  ## Prints RESOURCE name, quality attribute and its value (from RESOURCE YAML file input)

  resource <- RESOURCE$resource
  
  Q <- length(RESOURCE$quality)
  for(q in 1:Q){
    quality <- names(RESOURCE$quality[q])
    value <- RESOURCE$quality[[q]]
    cat(resource, " .", quality, " ", value, sep="")
    cat("\n")
  }
}

load_process <- function(model_type, process_file){
  ## Prints the include command to import <process_file>.gms from model_type
  
  print_line <- paste("$include data/libraries/processes-", model_type, "-gams/", process_file, sep="")
  cat(print_line, "\n")

}

###--------------------------------------------------
### To print VARIABLE RESULTS  related code
###--------------------------------------------------

display <- function(variable){
  ## Prints code to display the results of the specified 'variable'

  cat("DISPLAY ")
  cat(variable, ".L", sep="")
  cat("\n")

}
