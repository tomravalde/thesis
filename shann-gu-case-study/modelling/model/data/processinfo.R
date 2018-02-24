#!/usr/bin/env Rscript

###--------------------------------------------------
### T. Ravalde
### Last edited: 2016/04/05
###--------------------------------------------------

library(yaml)
library(tools)

# This script goes through the processes-yaml/*.yaml files, and generates a CSV database with columns headed by:
#	- Process name
#	- Main flow
#	- Summer capacity
#	- Winter capacity
#	- Shoulder capacity

###--------------------------------------------------
### Create function which prints key information
###--------------------------------------------------

printInfo <- function(PROCESS_NAME){
  ## For PROCESS_NAME, function prints key information

  ## Construct filename and load corresponding yaml file
  filename <- paste("processes-yaml/", name, ".yaml", sep="")
  data <- yaml.load_file(filename)

  ## Identify main flow (whose abs(val)==1)
  resFlows <- as.numeric(data$resource)
  resFlowsMain <- names(data$resource[abs(resFlows)==1])

  ## Print information
  cat("\n")
  cat(data$process)
  cat(",")
  cat(resFlowsMain) ## TODO:
  cat(",")
  cat(data$rate$sum)
  cat(",")
  cat(data$rate$wint)
  cat(",")
  cat(data$rate$shoulder)
}

###--------------------------------------------------
### Initialise CSV file, to store information of all processes
### Print to it using above function
###--------------------------------------------------

## Generate list of processes
processes <- file_path_sans_ext(list.files("processes-yaml", pattern = "\\.yaml"))

## Initialise file
sink("processInfo.csv")
cat("process", "main.resource", "main.flow.sum", "main.flow.wint", "main.flow.shoul", sep=",") 

## Loop over all processes
for(p in 1:length(processes)){

  ## Get process name
  name <- processes[p]
  
  ## Print process information
  printInfo(name)
}

## Close file
sink()
