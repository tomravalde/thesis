## Makefile to build PhD thesis

###--------------------------------------------------
### T. Ravalde (thomas.ravalde08@imperial.ac.uk)
### Last edited: 2016/05/31
### Adapted from Keiran Healy (https://github.com/kjhealy/workflow-paper/blob/master/Makefile)
###--------------------------------------------------

## Put this Makefile in your project directory
## -	Change the paths to at the top of the file as needed
## 	output files from all of the files with the designated markdown
## -	`make thesis` will build the entire thesis (based on the contents of main.	tex)
## -	`make chapter` will build a preview version of the most recently edited 	chapter
## -	`make clean` will remove all the .pdf files and other filetypes
## 	in your working directory. Make sure you do not have files in these
##	formats that you want to keep!

## TODO
## - 	Haven't yet tested the wordcount feature
## - 	Haven't fully tested the make chapter (e.g. with nomenclature dependenci	es etc.)

###--------------------------------------------------
### Setup
###--------------------------------------------------

## Extensions for files in working directory
RMDEXT = Rmd # for all Rmarkdown files
MEXT = md # (e.g. md, markdown, mdown) for all markdown files
TEXEXT = tex # for all tex files

## Variables for files in working directory
SRC_RMD = $(wildcard *.$(RMDEXT)) # for all Rmarkdown files
SRC_MD = $(wildcard *.$(MEXT)) # for all markdown files
SRC_TEX = $(wildcard *.$(TEXEXT)) # for all tex files

## Working bibliography file
BIB=my-refs.bib

###--------------------------------------------------
### Dependencies
###--------------------------------------------------

MDS=$(SRC_RMD:.Rmd=.md)
TEXS=$(SRC_RMD:.Rmd=.tex)
COUNTS=$(SRC_RMD:.Rmd=.count)

###--------------------------------------------------
### Rules
###--------------------------------------------------

md:		update clean $(MDS)
tex:		update clean $(MDS) $(TEXS)
chapter:	update clean $(MDS) $(TEXS) chapter-xelatex
count:		$(COUNTS)
thesis:		update clean $(MDS) $(TEXS) combo


###--------------------------------------------------
### Commands
###--------------------------------------------------

## Build thesis
combo: main.tex
	latexmk -xelatex "-interaction=nonstopmode" main.tex

## Whenever running on Tom's machine, update to latest dependencies for paper and toolchain
update:
	if [ `hostname` = "cv-tr608-01" ] ; \
	then \
	cp /home/tr608/ImpCol/PhD/my-refs.bib . ; \
	inkscape -D -z --file=04_database/metab-hierarchy.svg --export-pdf=04_database/metab-hierarchy.pdf --export-latex ; \
	fi
#	cp /home/tr608/.pandoc/templates/chapter.xelatex . ; \

## Knit Rmarkdown to markdown
%.md: %.Rmd
	./knit.R $<

## Convert to tex using pandoc and build a standalone preview version of edited chapter
%.tex:	%.md
	./vc
	pandoc --chapters --natbib -o $@ $<
	cat chapter.prepend $@ chapter.append > preview.tex

## Complile the preview chapter
chapter-xelatex:
	latexmk -xelatex "-interaction=nonstopmode" preview.tex

## Run texcount on tex files
%.count: %.tex
	texcount -sub=section $< > $@

clean:
	rm -f *.aux *.log *.out *.spl *.bbl *.blg *.fls *fdb_latexmk
