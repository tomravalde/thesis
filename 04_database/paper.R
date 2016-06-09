## ----Setup, include=FALSE, results="hide", warning=FALSE-----------------
#opts_chunk$set(fig.path = "figures/", dev=c("cairo_pdf"), fig.pos='htbp', fig.width=5, fig.height=1.6, dpi=700, fig.show='hold', fig.lp="fig:", cache=FALSE, par=TRUE, echo=FALSE, results="hide", message=FALSE, warning=FALSE)

library(extrafont)
font_import(pattern="LinBiolinum")

## ----open-data, fig.height=2, fig.cap="The growing research interest in open data since its first occurrence in 1995 until 2014. Data from the Scopus analysis tool, from searching titles, abstracts and keywords for '\\texttt{open data}' or '\\texttt{open-data}'. \\label{fig:open_data}"----

open_data <- read.csv("open-data-research.csv")

library(MASS)
rate <- fitdistr(open_data$Number, "exponential")

library(dplyr)
open_data <- filter(open_data, Year>=1995)

library(ggplot2)
plot_open_data <- ggplot(open_data, aes(Year, Number)) +
  theme_bw() +
  ylab('Publications') +
  theme(axis.title.x = element_blank()) +
  geom_point()
plot_open_data
ggsave(plot_open_data, file="open-data-submission.pdf", width=8, height=4.94, units="cm", dpi=600)

## ----database-analysis---------------------------------------------------

# Import and shape data so we can obtain summary statistics

processes <- read.csv("../yaml/normalised/processes-analysis.csv")

## Specifiy whether flows are inputs or outputs
processes$sign <- "Input"
processes[processes$value>0, ]$sign <- "Output"

## Add 'mainOutput' column

### Build mainOutput lookup table
lookup <- filter(processes, value==1)
lookup <- dplyr::select(lookup, c(process, resource))

### Use keyFlows.lookup to add 'mainOutput' column to proc.keyFlows
processes <- inner_join(processes, lookup, by="process")
colnames(processes)[colnames(processes)=="resource.x"] <- "resource"
colnames(processes)[colnames(processes)=="resource.y"] <- "mainOutput"

processes <- processes[,c("process",
			 "process.name", 
			 "capacity", 
			 "TRL", 
			 "resource",
			 "unit",
			 "value",
			 "sign",
			 "mainOutput")]
processes <- unique(processes) # TODO: fudge required, due to the duplication of each row when using inner_join (not sure why), so try and fix this.

write.csv(processes, "shiny-processes.csv")


## ----energy-heatmap, fig.height=6, fig.cap="Resource consumption (negative values) and production (positive values) for different processes producing 1 kg of methane. Key: \\textsf{AWR} = alkaline with regeneration, \\textsf{BABIU} = bottom ash upgrading, \\textsf{HPWS} = high pressure water scrubbing; text labels indicate the TRL for each process.\\label{fig:heatmap_CH4}"----

## Extract subset of processes which produce methane as a main output
processes_CH4 <- filter(processes,
			mainOutput=="methane",
			capacity %in% c(0.24, 0.0001319, 0.122))

## Add more reader-friendly process and resource names for the plot
plot_names_processes <- read.csv("../yaml/normalised/plot_names_processes.csv")
plot_names_resources <- read.csv("../yaml/normalised/plot_names_resources.csv")

processes_CH4 <- inner_join(processes_CH4, plot_names_processes, by="process")
processes_CH4 <- inner_join(processes_CH4, plot_names_resources, by="resource")

processes_CH4$TRL <- factor(processes_CH4$TRL,
			    levels = c("c", "r", "m", "l")) # More appropriate order for the facets of the plot

## Add more descriptive TRL labels to the database
TRL <- c("c", "r", "m", "l")
#pts <- chunk$set(fig.path = "figures/", dev=c("cairo_pdf"), fig.pos='htbp', fig.width=5, fig.height=1.6, dpi=700, fig.show='hold', fig.lp="fig:", cache=FALSE, par=TRUE, echo=FALSE, results="hide", message=FALSE, warning=FALSE)

TRL_name <- c("current", "rare", "medium-term", "long-term")
TRL_name_lookup <- data.frame(TRL, TRL_name)
processes_CH4 <- inner_join(processes_CH4, TRL_name_lookup, by="TRL")

en_dot <- ggplot(processes_CH4, aes(value, plot_name.y)) +
  theme_bw() +
  theme(axis.text.y = element_text(size=6),
	axis.title.y = element_blank(),
	strip.text = element_text(size=8)) +
  geom_point() +
  xlab("Quantity [kg or MJ]") +
  geom_vline(xintercept=0) +
  facet_wrap(~ plot_name.x, ncol=2) +
  geom_text(aes(x=-23, y=1.5, label=TRL_name), size=3, hjust=0)
en_dot
ggsave(en_dot, file="comparison-submission.pdf", width=16.3, height=10.1, units="cm", dpi=600)

## ----interaction-network-------------------------------------------------

# Inter-sectoral plot for whole network stored separately, so it's easy to suppress from paper compilation (to save time)
base::source("resource-network.R")

resource_sectors <- read.csv("resources-sector.csv")
sectors_lookup <- rbind(c("energy", "blue"),
			c("water", "red"),
			c("waste", "black"),
			c("other", "green"))
sectors_lookup <- data.frame(sectors_lookup)
colnames(sectors_lookup) <- c("sector", "node_vector")
resources_sectors_node <- inner_join(resource_sectors, sectors_lookup)
node_vector <- c(resources_sectors_node$node_vector)

## Network plot (using SNA package)
layout <-  c("fruchtermanreingold", "kamadakawai", "spring", "circle", "eigen", "hall", "mds", "princoord", "target")

#library(sna) # Code to plot figure for saving (and subsequent manual editing)
#gplot(link_matrix,
#      mode=layout[1],
#      gmode="graph",
#      label = resources,
#      label.pos = 1,
#      jitter=FALSE,
##      arrowhead = FALSE,
#      thresh=0,
##      vertex.sides = 0,
#      vertex.col = node_vector,
#      edge.col = rgb(220, 217, 217, maxColorValue=255),
#      displaylabels = TRUE)

## ----wolman-flows, fig.height=3.6, fig.cap="Flows at the top of Wolman's hypothetical city before and after optimisation modelling suggests an optimal network for the middle. Negative values represent inputs while positive values represent outputs\\label{fig:bar_wolman}."----

wolman <- read.csv("wolman-flows.csv")
wolman <- melt(wolman)

plot_wolman <- ggplot(wolman, aes(resource, -value/1e6)) +
  theme_bw() +
#  geom_bar(stat="identity") +
  geom_point() +
  geom_hline(xintercept=0) +
  coord_flip() +
  xlab("Resource (units)") + 
#  ylab(bquote('Value [units x 10*^-6*')) +
  ylab(bquote('Value (units' %*% 10^6*')')) +
  facet_wrap(~variable, ncol=1)
plot_wolman
ggsave(plot_wolman, file="wolman-submission.pdf", width=8, height=12.9, units="cm", dpi=600)

## ----PowerPoint-figure-conversions---------------------------------------
#library('ReporteRs')
#
### Open data research
#doc <- pptx()
#doc <- addSlide(doc, "Two Content")
#doc <- addPlot(doc, function() print(plot_open_data), vector.graphic = TRUE)
#doc <- addPlot(doc, function() print(plot_open_data), vector.graphic = FALSE)
#writeDoc(doc, file = "word-figures/open-data.pptx")
#
### Methane processes
#doc <- pptx()
#doc <- addSlide(doc, "Two Content")
#doc <- addPlot(doc, function() print(en_dot), vector.graphic = TRUE)
#doc <- addPlot(doc, function() print(en_dot), vector.graphic = FALSE)
#writeDoc(doc, file = "word-figures/methane-processes.pptx")
#
### Wolman optimisation
#doc <- pptx()
#doc <- addSlide(doc, "Two Content")
#doc <- addPlot(doc, function() print(plot_wolman), vector.graphic = TRUE)
#doc <- addPlot(doc, function() print(plot_wolman), vector.graphic = FALSE)
#writeDoc(doc, file = "word-figures/optimised-wolman.pptx")

