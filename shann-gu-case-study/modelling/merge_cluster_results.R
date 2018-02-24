## Merge headlines
a <- read.csv("model/results/cluster-results/gridCase_minCost/headlines.csv")
b <- read.csv("model/results/cluster-results/designCase_minCost/headlines.csv")
c <- read.csv("model/results/cluster-results/designCase_minEmissions/headlines.csv")
d <- read.csv("model/results/cluster-results/designCase_minWaste/headlines.csv")
e <- read.csv("model/results/cluster-results/designCase_minWater/headlines.csv")
f <- read.csv("model/results/cluster-results/wildcard_current_minCost/headlines.csv")
g <- read.csv("model/results/cluster-results/wildcard_medium_minCost/headlines.csv")
h <- read.csv("model/results/cluster-results/wildcard_long_minCost/headlines.csv")

headlines <- rbind(a,b,c,d,e,f,g,h)

write.csv(headlines, "model/results/cluster-results/headlines.csv", row.names=FALSE)

## Merge metabolic flows

#a <- read.csv("model/results/cluster-results/gridCase_minCost/data/results-praq-resources.csv")
#b <- read.csv("model/results/cluster-results/designCase_minCost/data/results-praq-resources.csv")
#c <- read.csv("model/results/cluster-results/designCase_minEmissions/data/results-praq-resources.csv")
#d <- read.csv("model/results/cluster-results/designCase_minWaste/data/results-praq-resources.csv")
#e <- read.csv("model/results/cluster-results/designCase_minWater/data/results-praq-resources.csv")
#f <- read.csv("model/results/cluster-results/wildcard_current_minCost/data/results-praq-resources.csv")
#g <- read.csv("model/results/cluster-results/wildcard_medium_minCost/data/results-praq-resources.csv")
#h <- read.csv("model/results/cluster-results/wildcard_long_minCost/data/results-praq-resources.csv")

a <- read.csv("model/results/cluster-results/gridCase_minCost/metabolic-flows.csv")
b <- read.csv("model/results/cluster-results/designCase_minCost/metabolic-flows.csv")
c <- read.csv("model/results/cluster-results/designCase_minEmissions/metabolic-flows.csv")
d <- read.csv("model/results/cluster-results/designCase_minWaste/metabolic-flows.csv")
e <- read.csv("model/results/cluster-results/designCase_minWater/metabolic-flows.csv")
f <- read.csv("model/results/cluster-results/wildcard_current_minCost/metabolic-flows.csv")
g <- read.csv("model/results/cluster-results/wildcard_medium_minCost/metabolic-flows.csv")
h <- read.csv("model/results/cluster-results/wildcard_long_minCost/metabolic-flows.csv")

a$scenario <- "Grid case (min. cost)"
b$scenario <- "Design case (min. cost)"
c$scenario <- "Design case (min. emissions)"
d$scenario <- "Design case (min. waste)"
e$scenario <- "Design case (min. water)"
f$scenario <- "Wildcard case (current)"
g$scenario <- "Wildcard case (medium)"
h$scenario <- "Wildcard case (long)"

metabolic_flows <- rbind(a,b,c,d,e,f,g,h)
write.csv(metabolic_flows, "model/results/cluster-results/metabolic_flows.csv", row.names=FALSE)

## Merge process information

a <- read.csv("model/results/cluster-results/gridCase_minCost/data/results-praq-processes.csv")
b <- read.csv("model/results/cluster-results/designCase_minCost/data/results-praq-processes.csv")
c <- read.csv("model/results/cluster-results/designCase_minEmissions/data/results-praq-processes.csv")
d <- read.csv("model/results/cluster-results/designCase_minWaste/data/results-praq-processes.csv")
e <- read.csv("model/results/cluster-results/designCase_minWater/data/results-praq-processes.csv")
f <- read.csv("model/results/cluster-results/wildcard_current_minCost/data/results-praq-processes.csv")
g <- read.csv("model/results/cluster-results/wildcard_medium_minCost/data/results-praq-processes.csv")
h <- read.csv("model/results/cluster-results/wildcard_long_minCost/data/results-praq-processes.csv")

a$scenario <- "Grid case (min. cost)"
b$scenario <- "Design case (min. cost)"
c$scenario <- "Design case (min. emissions)"
d$scenario <- "Design case (min. waste)"
e$scenario <- "Design case (min. water)"
f$scenario <- "Wildcard case (current)"
g$scenario <- "Wildcard case (medium)"
h$scenario <- "Wildcard case (long)"

process_mix <- rbind(a,b,c,d,e,f,g,h)
write.csv(process_mix, "model/results/cluster-results/process_mix.csv", row.names=FALSE)

## Merge exergy results
a <- read.csv("model/results/cluster-results/gridCase_minCost/exergy-results.csv")
b <- read.csv("model/results/cluster-results/designCase_minCost/exergy-results.csv")
c <- read.csv("model/results/cluster-results/designCase_minEmissions/exergy-results.csv")
d <- read.csv("model/results/cluster-results/designCase_minWaste/exergy-results.csv")
e <- read.csv("model/results/cluster-results/designCase_minWater/exergy-results.csv")
f <- read.csv("model/results/cluster-results/wildcard_current_minCost/exergy-results.csv")
g <- read.csv("model/results/cluster-results/wildcard_medium_minCost/exergy-results.csv")
h <- read.csv("model/results/cluster-results/wildcard_long_minCost/exergy-results.csv")

exergy_flows <- rbind(a,b,c,d,e,f,g,h)
write.csv(exergy_flows, "model/results/cluster-results/exergy.csv", row.names=FALSE)

## Merge ENA results
b <- read.csv("model/results/cluster-results/designCase_minCost/ENA.csv")
c <- read.csv("model/results/cluster-results/designCase_minEmissions/ENA.csv")
d <- read.csv("model/results/cluster-results/designCase_minWaste/ENA.csv")
e <- read.csv("model/results/cluster-results/designCase_minWater/ENA.csv")
f <- read.csv("model/results/cluster-results/wildcard_current_minCost/ENA.csv")
g <- read.csv("model/results/cluster-results/wildcard_medium_minCost/ENA.csv")
h <- read.csv("model/results/cluster-results/wildcard_long_minCost/ENA.csv")

ENA_summaries <- rbind(b,c,d,e,f,g,h)
write.csv(ENA_summaries, "model/results/cluster-results/ENA.csv", row.names=FALSE)

## Merge ENA matrix results
b <- read.csv("model/results/cluster-results/designCase_minCost/ena-matrices.csv")
c <- read.csv("model/results/cluster-results/designCase_minEmissions/ena-matrices.csv")
d <- read.csv("model/results/cluster-results/designCase_minWaste/ena-matrices.csv")
e <- read.csv("model/results/cluster-results/designCase_minWater/ena-matrices.csv")
f <- read.csv("model/results/cluster-results/wildcard_current_minCost/ena-matrices.csv")
g <- read.csv("model/results/cluster-results/wildcard_medium_minCost/ena-matrices.csv")
h <- read.csv("model/results/cluster-results/wildcard_long_minCost/ena-matrices.csv")

names(b) <- c("From", "To", "Sign", "Scenario", "Matrix")
names(c) <- c("From", "To", "Sign", "Scenario", "Matrix")
names(d) <- c("From", "To", "Sign", "Scenario", "Matrix")
names(e) <- c("From", "To", "Sign", "Scenario", "Matrix")
names(f) <- c("From", "To", "Sign", "Scenario", "Matrix")
names(g) <- c("From", "To", "Sign", "Scenario", "Matrix")
names(h) <- c("From", "To", "Sign", "Scenario", "Matrix")

ena_matrices <- rbind(b,c,d,e,f,g,h)
write.csv(ena_matrices, "model/results/cluster-results/ena-matrices.csv", row.names=FALSE)

## Merge component costs
a <- read.csv("model/results/cluster-results/gridCase_minCost/component-costs.csv")
b <- read.csv("model/results/cluster-results/designCase_minCost/component-costs.csv")
c <- read.csv("model/results/cluster-results/designCase_minEmissions/component-costs.csv")
d <- read.csv("model/results/cluster-results/designCase_minWaste/component-costs.csv")
e <- read.csv("model/results/cluster-results/designCase_minWater/component-costs.csv")
f <- read.csv("model/results/cluster-results/wildcard_current_minCost/component-costs.csv")
g <- read.csv("model/results/cluster-results/wildcard_medium_minCost/component-costs.csv")
h <- read.csv("model/results/cluster-results/wildcard_long_minCost/component-costs.csv")

component_costs <- rbind(a,b,c,d,e,f,g,h)
write.csv(component_costs, "model/results/cluster-results/component-costs.csv", row.names=FALSE)
