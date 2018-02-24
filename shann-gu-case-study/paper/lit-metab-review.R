###--------------------------------------------------
### T. Ravalde
### Last edited: 2015/01/28
###--------------------------------------------------

library(cluster)

# Identify the clusters of models within the urban metabolism literature, according to attributes:
## type
## techniques
## focus
## use

###--------------------------------------------------
## PREPROCESSING
### From lit-metab-modelling.csv, we used R to remove rows with states!="cut")
### From lit-keep-maybe.csv, we summarised the attributes for each paper, and identified more papers to cut
### We are left with lit-final-cut.csv, which is used below
###--------------------------------------------------



###--------------------------------------------------
### Set up the database for cluster analysis
###--------------------------------------------------

### Load in literature titles and attributes, removing the remaining papers marked 'CUT'
lit_draft_cut <- read.csv("lit-final-cut.csv")
lit_final_cut <- filter(lit_draft_cut, type!="CUT")

## Only keep variables relevant for our cluster analysis
lit_final_cut <- select(lit_final_cut,
			c(Title, type, techniques.broad, techniques, techniques.IO, techniques.other, focus.broad.cat, focus.broad, focus, focus.multiple, focus.other, use, use.other))



###--------------------------------------------------
### Code to understand and visualise the frequency of model attributes
### Plots identify the frequency of each possibility for an attribute
### These can be used to decide which attribute-possibilties can be ammalgamated to 'other' category
###--------------------------------------------------

## View the possible definitions for each variable (UNCOMMENT to view)
#sort(unique(lit_final_cut$techniques.broad))
#sort(unique(lit_final_cut$techniques))
#sort(unique(lit_final_cut$focus.broad.cat))
#sort(unique(lit_final_cut$focus.broad))
#sort(unique(lit_final_cut$focus))
#sort(unique(lit_final_cut$use))

## Frequency of techniques.broad possibilities
techniques.broad <- ggplot(lit_final_cut) +
  geom_histogram(aes(techniques.broad)) +
  theme(axis.text.x = element_text(hjust=1, angle=30))
techniques.broad

## Frequency of techniques possibilities
techniques <- ggplot(lit_final_cut) +
  geom_histogram(aes(techniques)) +
  theme(axis.text.x = element_text(hjust=1, angle=30))
techniques

## Frequency of focus.broad.cat possibilities
focus.broad.cat <- ggplot(lit_final_cut) +
  geom_histogram(aes(focus.broad.cat)) +
  theme(axis.text.x = element_text(hjust=1, angle=30))
focus.broad.cat

## Frequency of focus.broad possibilities
focus.broad <- ggplot(lit_final_cut) +
  geom_histogram(aes(focus.broad)) +
  theme(axis.text.x = element_text(hjust=1, angle=30))
focus.broad

## Frequency of focus possibilities
focus <- ggplot(lit_final_cut) +
  geom_histogram(aes(focus)) +
  theme(axis.text.x = element_text(hjust=1, angle=30))
focus

## Frequency of use possibilities
use <- ggplot(lit_final_cut) +
  geom_histogram(aes(use)) +
  theme(axis.text.x = element_text(hjust=1, angle=30))
use



###--------------------------------------------------
### Select and order attributes for ordinal data
### E.g. for plotting, it is helpful for "Low-level", "Medium-level", and "High-level" to appear in this order
###--------------------------------------------------

## Select attributes to be used in the analysis
lit_main_cats <- select(lit_final_cut, c(type, techniques.broad, techniques, focus.broad.cat, focus.broad, use))

## Order attributes for ordinal data (e.g. for plotting, it is helpful for "Low-level", "Medium-level", and "High-level" to appear in this order)
lit_main_cats <- transform(lit_main_cats,
			   type=factor(type,
			     levels=c("conceptual", "mathematical", "various"),
			     ordered=TRUE),
			   techniques.broad=factor(techniques.broad,
			     levels=c("Low-level", "Medium-level", "High-level", "statistical", "misc."),
			     ordered=TRUE),
			   techniques=factor(techniques,
			     levels=c("Bottom-up mathematical description", "ENA", "integrated", "LCA", "mass and/or energy balance", "mathematical representation of subsystems", "other", "ratios", "regression", "relate actors", "relate various", "various")),
			   focus.broad.cat=factor(focus.broad.cat,
			     levels=c("resource", "other", "methodology"),
			     ordered=TRUE),
			   focus.broad=factor(focus.broad,
			     levels=c("single resource", "multiple resources", "integrated", "form", "socioeconomic", "environment", "methodology"),
			     ordered=TRUE),
			   use=factor(use,
			     levels=c("accounting", "forecasting", "other", "scenario analysis", "strategic planning", "system understanding/improvements", "theory")))



###--------------------------------------------------
### Cluster analysis using agnes and daisy routines
### Based on http://www.jameskeirstead.ca/blog/how-to-do-a-quantitative-literature-review-in-r/
### In the end, we did not need to apply this (UNCOMMENT to run)
###--------------------------------------------------

### Further reduce the categories for cluster analysis
#lit_main_cats <- select(lit_main_cats, c(type, techniques.broad, focus.broad.cat, focus.broad, use))
#
### 1. Hierarchical clustering (agnes method)
##lit_main_cats <- select(lit_main_cats, c(type, techniques.broad, focus.broad.cat, focus.broad, use))
#diss <- daisy(lit_main_cats)
#agnes.clus <- agnes(diss)
#plot(agnes.clus) ## Judge this as having about 4 clusters
#
#### 2. Partitioning clustering: calculate 5 pam clusters, directly from the dissimilarity matrix
#pam.cl <- pam(diss, 4)
#pam.cl$medoids
#
#### Identify clusters, for plotting
#cats <- as.character(lit_main_cats[pam.cl$id.med,]$use)



###--------------------------------------------------
### Plot results to identify clusters
###--------------------------------------------------

plot_cluster <- ggplot(lit_main_cats, aes(x=focus.broad, y=techniques.broad)) +
  geom_jitter(aes(colour=factor(use)), width=0.1, height=0.1) +
  theme_bw() +
  theme(axis.text.x = element_text(hjust=1, angle=30)) +
  xlab("Model focus") +
  ylab("Modelling techniques") +
  scale_colour_discrete(name="Model use") +
  facet_wrap(~focus.broad.cat, scales="free_x")
plot_cluster

## Save for A4 paper
ggsave(file="metab-model-cluster.pdf", width = 290, height = 200, unit = "mm")

plot_cluster_alt <- ggplot(lit_main_cats, aes(x=focus.broad, y=techniques.broad)) +
  geom_jitter(aes(colour=factor(focus.broad.cat))) +
  geom_jitter(aes(colour=factor(focus.broad.cat))) +
  theme_bw() +
  theme(axis.text.x = element_text(hjust=1, angle=30)) +
  facet_wrap(~use, nrow=1)
plot_cluster_alt
