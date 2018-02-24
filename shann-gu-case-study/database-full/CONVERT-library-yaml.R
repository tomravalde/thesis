# Script to convert a file from the YAML process database, to a file for the YAML library.

## Write function to convert YAML-database to YAML-library for model

library_conversion <- function(PROCESS){


  sink(paste("processes-yaml/", PROCESS$process, ".yaml", sep=""))

  cat("process: ", PROCESS$process, "\n", sep="")
  
  R <- length(PROCESS$flow)
  cat("resources:", "\n", sep="")
  
  for(r in 1:R){
    cat("     ",
        names(PROCESS$flow[r]), ": ",
        PROCESS$flow[[r]]$value,
        "\n", sep="")
  }
  
  cat("rate: ", PROCESS$capacity$value, "\n", sep="")
  cat("notes:")
  
  sink()
}


## Apply function

library(yaml)

YAML_files <- list.files("processes-yaml-database")
filenames <- paste("processes-yaml-database/", YAML_files, sep="")
F <- length(filenames)

for(f in 1:F){
  PROCESS <- yaml.load_file(filenames[f])
  library_conversion(PROCESS)
}
