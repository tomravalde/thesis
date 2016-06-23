#!/usr/bin/env Rscript

###--------------------------------------------------
### T. Ravalde
### Last edited: 2016/06/21
###--------------------------------------------------

library(ggplot2)

# This script plots the model statistics for the each iteration of the null, PRaQ and nonlinear models

###--------------------------------------------------
### Load and setup data
###--------------------------------------------------

## Load
network <- read.csv("network-summary.csv")
stats <- read.csv("benchmark-results.csv")

## Merge
data <- merge(network, stats)

##
data <- filter(data, !stat_unordered %in% c("instructions_nonlinear",
					    "iterations",
					    "nodes",
					    "nonzeros_nonlinear",
					    "obj_est",
					    "time_toGenerate",
					    "elements_nonzero"))

## Create display names for the model statistics
eq <- c("equations_single", "Equations")
vars_sgl <- c("variables_single", "Variables (single)")
vars_disc <- c("variables_discrete", "Variables (discrete)")
obj <- c("obj_val", "Objective value")
time <- c("time_toSolve", "Solution time [s]")

## Combine display names into a dataframe
facet_names <- rbind(eq, vars_sgl, vars_disc, obj, time)
colnames(facet_names) <- c("stat_unordered", "stat_name")

## Merge display names to the data dataframe
data <- merge(data, facet_names)

###--------------------------------------------------
### Order the factors for plotting order
###--------------------------------------------------

data$stat <- factor(data$stat_name,
				 levels=c("Equations", "Variables (single)", "Variables (discrete)", "Objective value", "Solution time [s]"))

data$Formulation <- factor(data$formulation_unordered,
				 levels=c("Null", "PRaQ", "Nonlinear"))

###--------------------------------------------------
### Make a cleaned version of data, removing outliers
###--------------------------------------------------

## Remove outliers, and created separate dataframes
data_cleaned <- filter(data, !conversion %in% c(6,8))
data$adjusted <- "Outliers included"
data_cleaned$adjusted <- "Outliers removed"
data_all <- rbind(data, data_cleaned)

## Extract objective value row from cleaned dataframe, and rename to note removal of outliers
outliersRemoved_objVal <- filter(data_cleaned, stat_unordered=="obj_val")
outliersRemoved_objVal$stat <- "Objective value (outliers removed)"

## Extract soluton time row from cleaned dataframe, and rename to note removal of outliers
outliersRemoved_solTime <- filter(data_cleaned, stat_unordered=="time_toSolve")
outliersRemoved_solTime$stat <- "Solution time (outliers removed)"

## Bind original dataframe, with the newly created outliers removed data
data <- rbind(data, outliersRemoved_objVal, outliersRemoved_solTime)

## OPTIONAL: remove Nonlinear information, to allow Null/PRaQ comparison
#data <- filter(data, Formulation!="Nonlinear")

###--------------------------------------------------
### Plot data
###--------------------------------------------------

plot_conversion <- ggplot(data, aes(conversion, value)) +
  geom_line(aes(colour=Formulation)) +
  facet_wrap(~stat, scales="free_y", ncol=1) +
#  facet_grid(adjusted~stat, scales="free") +
  theme_bw() +
  theme(axis.title.y=element_blank()) +
  xlab("Number of conversion processes")

plot_conversion_cleaned <- ggplot(data_cleaned, aes(conversion, value)) +
  geom_line(aes(colour=Formulation)) +
  facet_wrap(~stat, scales="free_y", ncol=1) +
  theme_bw()

plot_resources <- ggplot(data, aes(resources, value)) +
  geom_line(aes(colour=Formulation)) +
  facet_wrap(~stat_name, scales="free_y") +
  theme_bw()

plot_transport <- ggplot(data, aes(transport, value)) +
  geom_line(aes(colour=Formulation)) +
  facet_wrap(~stat_name, scales="free_y") +
  theme_bw()
