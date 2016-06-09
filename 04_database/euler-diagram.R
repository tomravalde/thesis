## Code to plot Euler diagram of sectoral interactions (saved for future reference)

# Plot interactions as an Euler diagram
library(venneuler)

venn <- c("Energy&Other"=en_oth+oth_en,
	  "Energy&Waste"=en_wst+wst_en,
          "Energy&Water"=en_wat+wat_en,
  	  "Other&Waste"=oth_wst+wst_oth,
	  "Other&Water"=oth_wat+wat_oth,
	  "Waste&Water"=wst_wat+wat_wst)

## TODO: Add combinations of three and four sectors
#"Energy&Other&Waste"=en_oth_wst
#"Energy&Other&Water"=en_oth_wat
#"Energy&Water&Waste"=en_wat_wst
#"Other&Water&Waste"=oth_wat_wst
#
#"Energy&Other&Water&Waste"=en_oth_wat_wst

venn <- venneuler(venn)

venn$labels <- c(en_oth+oth_en,
		 en_wst+wst_en,
		 en_wat+wat_en,
		 oth_wst+wst_oth,
		 oth_wat+wat_oth,
		 wst_wat+wat_wst)
# TODO: Save the image and correct the label positioning with Inkscape or Tikz
#plot(venn)

#library(igraph)
#plot(foo)
#plot(foo, vertix.size=betweenness(foo))
#
#bar <- graph.data.frame(interactions_sum, directed=t)
#plot(bar, vertex.size=betweenness(bar))
#plot(bar, vertex.size=closeness(bar))

## venn diagram
#library(vennerable)

