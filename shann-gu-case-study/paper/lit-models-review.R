###--------------------------------------------------
### T. Ravalde
### Last edited: 2015/02/08
###--------------------------------------------------

library(tm)
library(dplyr)
library(ggplot2)
library(reshape2)

# Find literature which describes the optimization of multiple resource types (energy, water, waste, and other)

###--------------------------------------------------
### Load in potential titles (lit-resource-modelling.csv)
### Titles are the results of Scopus search: http://www.scopus.com/results/results.uri?sort=r-f&src=s&sid=492559A18BFC5EDC7C12FF9547004CF1.fM4vPBipdL1BpirDq5Cw%3a100&sot=a&sdt=cl&cluster=scosubjabbr%2c%22CHEM%22%2cf%2bscosubtype%2c%22ar%22%2ct%2bscosubjabbr%2c%22BIOC%22%2cf%2c%22MATE%22%2cf%2c%22PHYS%22%2cf%2c%22MEDI%22%2cf%2c%22IMMU%22%2cf%2c%22MATH%22%2cf%2c%22SOCI%22%2cf%2c%22ECON%22%2cf%2c%22PHAR%22%2cf%2c%22NURS%22%2cf%2c%22VETE%22%2cf%2c%22ARTS%22%2cf%2c%22HEAL%22%2cf%2c%22NEUR%22%2cf%2c%22PSYC%22%2cf%2c%22Undefined%22%2cf&sessionSearchId=492559A18BFC5EDC7C12FF9547004CF1.fM4vPBipdL1BpirDq5Cw%3a100&origin=savedSearchNewOnly&txGid=492559A18BFC5EDC7C12FF9547004CF1.fM4vPBipdL1BpirDq5Cw%3a10
### Use tm (text mining) package to identify word frequencies within the titles (example here: https://deltadna.com/blog/text-mining-in-r-for-term-frequency/)
###--------------------------------------------------


## Load in all titles
lit <- read.csv("lit-resource-modelling.csv")
titles <- as.character(lit$Title) # The unedited paper titles

## Merge titles into single block of text
text_full <- paste(titles, collapse=" ")

## Edit the text for mining
text_source <- VectorSource(text_full)
corpus <- Corpus(text_source)
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)
corpus <- tm_map(corpus, removeWords, stopwords("english"))

## Create the document-term matrix, and count word frequency
dtm <- DocumentTermMatrix(corpus)
dtm2 <- as.matrix(dtm)
frequency <- colSums(dtm2)
frequency <- sort(frequency, decreasing=TRUE)

## Create dataframe of word frequency
words <- names(frequency)
freq <- as.data.frame(frequency)$frequency
word_freq <- data.frame(words, freq) # 11,967 unique words in total

## Sort so words are plotted in ascending order
word_freq$words <- factor(word_freq$words,
			  levels= word_freq$words[order(word_freq$freq)])

## Dot-plot of word frequency
plot_all <- ggplot(word_freq, aes(words, freq)) +
  geom_point() +
  coord_flip()
plot_all

## Save word-frequency list for manual editing
write.csv(word_freq, "words-pre-cut.csv", row.names=FALSE)

###--------------------------------------------------
### Manually reduce the list of words (removing those which don't refer to resources, e.g. 'network')
##### Original list: words-pre-cut.csv (11,967 unique words)
##### Reduced list: words-post-cut.csv (366 unique words)
### Manually categorise remaining words (e.g. "electricity" --> "energy"), and store in word-cats.csv
### Apply word-frequency analysis to identify:
##### (A) the number of word matches for each title
##### (B) the number of category matches for each title
### Plot and save results
###--------------------------------------------------

## Load manually-reduced database of word frequencies
word_freq_cut <- read.csv("words-post-cut.csv")

## Sort so words are plotted in ascending order
word_freq_cut$words <- factor(word_freq_cut$words,
		       levels= word_freq_cut$words[order(word_freq_cut$freq)])

## Dot-plot of word frequency
plot_cut <- ggplot(word_freq_cut, aes(words, freq)) +
  geom_point() +
  coord_flip()
plot_cut

## Load in categorisation of words
word_cats <- read.csv("word-cats.csv") ## TODO: Remove the 'nonresource category'

## List of words to match
text_cut <- read.csv("text_cut.csv")$word

## Set up vectors to store the results of the word-frequency analysis
T <- length(titles)
word_matches <- length(T)
cat_matches <- length(T)
cat_matches_list <- length(T)
optim <- rep(1, T)

## Loop over all titles, to identify the number of matching words
for(i in 1:T){

  ## Convert title into a vector where each word is a unique element
  title <- titles[i]
  title <- tolower(title) # Convert to lowercase
  title <- gsub("[[:punct:]]", " ", title) # Replace punctuation with spaces
  title <- unlist(strsplit(title, split=" ")) # Convert to vector
  
  ## For each title, count the number of words matching those in our list
  intersections <- intersect(title, text_cut)
  word_matches[i] <- length(intersections) ## a vector of how many matching words

  ## For each title, identify the number of unique categories containing the matched words
  categs <- filter(word_cats, words %in% intersections)

  ## For each title, count the number of unique categories containing the matched words
  cat_matches[i] <- length(unique(categs$category))

  ## For each title, list the unique categories containing the matched words
  categs_list <- as.character(sort(unique(categs$category)))
  categs_list <- paste(categs_list, sep="", collapse=", ")
  cat_matches_list[i] <- categs_list

  ## Identify the titles with 'optimi[s/z]ation', or similar
  optims <- match(c("optimization",
	  	 "optimisation",
	  	 "optimized",
	  	 "optimised",
	  	 "optimal"), title)

  if(all(is.na(optims)) == TRUE){
    optim[i] <- 0
  }

}

## Store results for each title in dataframe
title_matches <- data.frame(titles, word_matches, cat_matches, cat_matches_list, optim)

## Sort so word matches are plotted in ascending order
title_matches$titles <- factor(title_matches$titles,
			       levels=title_matches$titles[order(title_matches$word_matches)]) 

## For each title, dot-plot the number of word matched
plot_word_matches <- ggplot(title_matches, aes(titles, word_matches)) +
  geom_point() +
  coord_flip()
plot_word_matches

## Sort so category matches are plotted in ascending order
title_matches$titles <- factor(title_matches$titles,
			       levels=title_matches$titles[order(title_matches$cat_matches)])

## For each title, dot-plot the number of category matches
plot_cat_matches <- ggplot(title_matches, aes(titles, cat_matches)) +
  geom_point() +
  coord_flip()
plot_cat_matches

## Save titles and category matches (in original order)
write.csv(title_matches, "title-matches-original-order.csv", row.names=FALSE)

## As above, but just the titles containing 'optimization' and similar words
title_matches_optim <- filter(title_matches, optim==1)
write.csv(title_matches_optim, "title-matches-optim-original-order.csv", row.names=FALSE)

## Save titles and category matches (sorted according to the frequency of category matches)
title_matches <- arrange(title_matches, desc(cat_matches))
write.csv(title_matches, "title-matches.csv", row.names=FALSE)



###--------------------------------------------------
### Make dot plot of category combinations in the literature
###--------------------------------------------------

## Get frequency of each combination of categories
combo_freqs <- data.frame(count(title_matches, cat_matches_list))
names(combo_freqs) <- c("Combinations", "CatFreq")

## Get frequency of 'optimization' within each category
optim_freqs <- title_matches %>% group_by(cat_matches_list) %>% summarize(sum(optim))
optim_freqs <- data.frame(optim_freqs)
names(optim_freqs) <- c("Combinations", "OptimFreq")

combo_freqs <- merge(combo_freqs, optim_freqs)

## Incorporate the number of categories for each combination (so plot can be faceted according to this)
tmp <- title_matches[!duplicated(title_matches$cat_matches_list), ]
tmp <- select(tmp, c(cat_matches_list, cat_matches))
names(tmp) <- c("Combinations", "n")
combo_freqs <- merge(combo_freqs, tmp)

## Create a column of titles (to be printed as facet_wrap strip titles)
combo_freqs$NumCats <- combo_freqs$n
combo_freqs[combo_freqs$n==0, ]$NumCats <- "Zero category matches"
combo_freqs[combo_freqs$n==1, ]$NumCats <- "One category match"
combo_freqs[combo_freqs$n==2, ]$NumCats <- "Two category matches"
combo_freqs[combo_freqs$n==3, ]$NumCats <- "Three category matches"
combo_freqs[combo_freqs$n==4, ]$NumCats <- "Four category matches"
combo_freqs[combo_freqs$n==5, ]$NumCats <- "Five category matches"

## Sort so number of categories will be faceted in ascending order
combo_freqs$NumCats <- factor(combo_freqs$NumCats,
			  levels= combo_freqs$NumCats[order(combo_freqs$n)])

## Sort so combination frequencies will be plotted in ascending order
combo_freqs$Combinations <- factor(combo_freqs$Combinations,
			  levels= combo_freqs$Combinations[order(combo_freqs$CatFreq)])

## Reshape so that CatFreq and OptimFreq can both be plotted as points
combo_freqs <- select(combo_freqs, -c(n))
combo_freqs <- melt(combo_freqs, id.vars=c("Combinations", "NumCats"), value.name="Frequency")

## Plot
plot_cat_combo <- ggplot(combo_freqs, aes(Frequency, Combinations)) +
  geom_point(aes(colour=variable)) +
  scale_colour_manual(values=c("black", "grey")) +
  facet_grid(~NumCats, scales="free_y") +
  theme_bw()
plot_cat_combo
ggsave("plot-cat-combo.pdf", plot_cat_combo, width=210, height=297, units="mm")

###--------------------------------------------------
### POST-PROCESSING
### Copy title-matches-optim-original-order.csv --> title-matches-optim-original-order-edit.csv, and manually identify irrelevent papers with 'CUT'
### This is so we can analyse the content of the remaining papers
###--------------------------------------------------

title_matches_edit <- read.csv("title-matches-optim-original-order-edit.csv")

###--------------------------------------------------
### Plot overview of literature
###--------------------------------------------------

## Only keep the relevant literature
lit <- filter(title_matches_edit, notes!="CUT")

unique_levels <- unique(lit$level)
unique_cats <- unique(lit$cat_matches_list)

## Sort so levels are plotted in ascending order
lit <- transform(lit,
		 level=factor(level,
		   levels=c("component",
			    "domestic", 
			    "plant",
			    "plant (multiple components)",
			    "plant (couple)",
			    "chemical plant",
			    "refinery",
			    "site",
			    "agricultural area",
			    "city",
			    "region",
			    "regional",
			    "global",
			    "various"),
		    ordered=TRUE),
		 cat_matches_list=factor(cat_matches_list,
		   levels=c("energy",
			   "various",
			   "waste",
			   "various, waste",
			   "various, water",
			   "waste, water",
			   "energy, various",
			   "energy, waste",
			   "energy, water",
			   "energy, various, waste",
			   "energy, various, water",
			   "energy, waste, water",
			   "energy, water, waste",
			   "various, waste, water",
			   "energy, various, waste, water"),
		    ordered=TRUE))



## Plot as bar chart: no. of categories vs. level (both ordinal factors)
plot_lit <- ggplot(lit, aes(level, cat_matches_list)) + 
#plot_lit <- ggplot(lit, aes(level, cat_matches)) + 
  geom_jitter() +
  facet_wrap(~cat_matches, scale="free_y", ncol=1) +
  theme_bw() +
  theme(axis.text.x = element_text(hjust=1, angle=30))
# geom_bar(stat="identity")
plot_lit


####--------------------------------------------------
#### Make Euler diagram of papers
#### Following instructions here: http://stackoverflow.com/questions/14662721/how-to-plot-a-3-set-proportional-venn-euler-diagram
####--------------------------------------------------
#
#region_elements <- function(regions){
#  ## Function counts the number of matches for a specified combination of resources ('region')
#  num_elements <- nrow(filter(title_matches, cat_matches_list==regions))
#  return(num_elements)
#}
#
### Apply region_elements function to each combination of resources
#en <- region_elements("energy")
#oth <- region_elements("other")
#wst <- region_elements("waste")
#wat <- region_elements("water")
#
#en_oth <- region_elements("energy,other")
#en_wst <- region_elements("energy,waste")
#en_wat <- region_elements("energy,water")
#oth_wst <- region_elements("other,waste")
#oth_wat <- region_elements("other,water")
#wst_wat <- region_elements("waste,water")
#
#en_oth_wst <- region_elements("energy,other,waste")
#en_oth_wat <- region_elements("energy,other,water")
#en_wst_wat <- region_elements("energy,waste,water")
#oth_wst_wat <- region_elements("other,waste,water")
#
#en_oth_wst_wat <- region_elements("energy,other,waste,water")
#
#
### Setup and plot Euler diagram
#regions <- c(EN=en, OTH=oth, WST=wst, WAT=wat,
#	     "EN&OTH"=en_oth, "EN&WST"=en_wst, "EN&WAT"=en_wat, "OTH&WST"=en_wst, "OTH&WAT"=oth_wat, "WST&WAT"=wst_wat,
#	     "EN&OTH&WST"=en_oth_wst, "EN&OTH&WAT"=en_oth_wat, "EN&WST&WAT"=en_wst_wat, "OTH&WST&WAT"=oth_wst_wat,
#	     "EN&OTH&WST&WAT"=en_oth_wst_wat)
#
#library(venneuler)
#venn <- venneuler(regions)
#research_overlaps <- plot(venn)
#research_overlaps
#
### Alternative method to plot
#library(VennDiagram)
#grid.newpage()
#
#venn.plot <- draw.quad.venn(
#    area1 = en + en_oth + en_wst + en_wat + en_oth_wst + en_oth_wat + en_wst_wat + en_oth_wst_wat,
#    area2 = oth + en_oth + oth_wst + oth_wat + en_oth_wst + en_oth_wat + oth_wst_wat + en_oth_wst_wat,
#    area3 = wst + en_wst + oth_wst + wst_wat + en_oth_wst + en_wst_wat + oth_wst_wat + en_oth_wst_wat,
#    area4 = wat + en_wat + oth_wat + wst_wat + en_oth_wat + en_wst_wat + oth_wst_wat + en_oth_wst_wat,
#    n12 = en_oth,
#    n13 = en_wst,
#    n14 = en_wat,
#    n23 = oth_wst,
#    n24 = oth_wat,
#    n34 = wst_wat,
#    n123 = en_oth_wst,
#    n124 = en_oth_wat,
#    n134 = en_wst_wat,
#    n234 = oth_wst_wat,
#    n1234 = en_oth_wst_wat,
#    category = c("Energy", "Other", "Waste", "Water"),
#    fill = c("orange", "red", "green", "blue"),
#    lty = "solid",
#    cex = 2,
#    cat.cex = 2,
#    cat.col = c("orange", "red", "green", "blue"),
#    scaled=TRUE
#    );
