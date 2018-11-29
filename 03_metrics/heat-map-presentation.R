# Plot heat map for presentation

## Make nicer labels for the heat map plot
heat.map.labels <- read.csv("heat-map-labels.csv")
corr.all.ids <- inner_join(corr.all.ids, heat.map.labels, by=c("y"="metric"))

corr.all.lower.2011 <- subset(corr.all.lower, year=="2011")
corr.all.ids.2011 <- subset(corr.all.ids, year=="2011")

## Show correlation on a heat map
plot.corr.all <- ggplot(corr.all.lower.2011, aes(x, y, fill=correlation)) +
  geom_tile() +
  facet_wrap( ~ year, ncol=1) +
  geom_text(data=corr.all.ids.2011 aes(label=label), size=2, hjust=0.1) +
#  scale_fill_gradient2(low = "red",
#		      high = "steelblue",
#		      limits=c(-1,1),
#		      name = expression(paste(rho))) +
  scale_x_discrete(limits=meas.all[length(meas.all):1]) +
  scale_y_discrete(limits=meas.all) +
  theme_bw() +
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank())
plot.corr.all
