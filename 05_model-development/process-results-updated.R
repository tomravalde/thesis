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

## Merge with data which describes the network (i.e. number of processes, resource, transport etc.)
data <- merge(network, stats)

## Remove some statistics
data <- filter(data, !stat_unordered %in% c("instructions_nonlinear",
					    "iterations",
					    "nodes",
					    "nonzeros_nonlinear",
					    "obj_est",
					    "time_toGenerate",
					    "elements_nonzero"))

###--------------------------------------------------
### Repeat the obj_est and time_toGenerate data, removing the outlying values at 6 and 8 conversion processes
###--------------------------------------------------

data_reduced <- filter(data, !conversion %in% c(6,8))

outliersRemoved_objVal <- filter(data_reduced, stat_unordered=="obj_val")
outliersRemoved_objVal$stat_unordered <- "obj_val_reduced"

outliersRemoved_solTime <- filter(data_reduced, stat_unordered=="time_toSolve")
outliersRemoved_solTime$stat_unordered <- "time_toSolve_reduced"

lin_solTime <- filter(data, stat_unordered=="time_toSolve" & formulation_unordered!="Nonlinear")
lin_solTime$stat_unordered <- "time_toSolve_lin"

data <- rbind(data, outliersRemoved_objVal, outliersRemoved_solTime, lin_solTime)

###--------------------------------------------------
### Prepare data for plotting
###--------------------------------------------------

## Create display names for the model statistics
eq <- c("equations_single", "Equations")
vars_sgl <- c("variables_single", "Variables (single)")
vars_disc <- c("variables_discrete", "Variables (discrete)")
obj <- c("obj_val", "Objective value [USD]")
time <- c("time_toSolve", "Solution time [s]")
obj_reduced <- c("obj_val_reduced", "Objective value (outliers removed) [USD]")
time_reduced <- c("time_toSolve_reduced", "Solution time (outliers removed) [s]")
time_lin <- c("time_toSolve_lin", "Solution time (linear models) [s]")

## Combine display names into a dataframe
facet_names <- rbind(eq, vars_sgl, vars_disc, obj, time, obj_reduced, time_reduced, time_lin)
colnames(facet_names) <- c("stat_unordered", "stat_name")

## Merge display names to the data dataframe
data <- merge(data, facet_names)

## Order the factors for plotting order
data$stat <- factor(data$stat_name,
				 levels=c("Equations", "Variables (single)", "Variables (discrete)", "Objective value [USD]", "Objective value (outliers removed) [USD]", "Solution time [s]", "Solution time (outliers removed) [s]", "Solution time (linear models) [s]"))

data$Formulation <- factor(data$formulation_unordered,
				 levels=c("Null", "PRaQ", "Nonlinear"))

###--------------------------------------------------
### Plot
###--------------------------------------------------

plot_conversion <- ggplot(data, aes(conversion, value)) +
  geom_line(aes(colour=Formulation)) +
  facet_wrap(~stat, scales="free_y", ncol=1) +
  theme_bw() +
  theme(axis.title.y=element_blank()) +
  xlab("Number of conversion processes")

plot_resources <- ggplot(data, aes(resources, value)) +
  geom_line(aes(colour=Formulation)) +
  facet_wrap(~stat_name, scales="free_y") +
  theme_bw()

plot_transport <- ggplot(data, aes(transport, value)) +
  geom_line(aes(colour=Formulation)) +
  facet_wrap(~stat_name, scales="free_y") +
  theme_bw()
