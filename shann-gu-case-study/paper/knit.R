#!/usr/bin/env Rscript

## Run at the command line: $ ./knit.R <filename>.Rmd

library(knitr)

args <- commandArgs()
print(args)
rmd_source <- args[6] ## This defines rmd_source as the <filename>.Rmd specified at the command line

knit(rmd_source)
