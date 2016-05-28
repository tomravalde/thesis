## Makefile to build PhD thesis

###--------------------------------------------------
### T. Ravalde
### Last edited: 2016/05/18
### Adapted from Keiran Healy (https://github.com/kjhealy/workflow-paper/blob/master/Makefile)
###--------------------------------------------------

## Put this Makefile in your project directory
## -	Change the paths at the top of the file as needed
## -	Using `make` without arguments will generate tex, and pdf 
## 	output files from all of the files with the designated markdown
##	extension. The default is `.md` but you can change this. 
## -	You can specify an output format with `make tex` or `make pdf`
## -	Doing `make clean` will remove all the .pdf files and other filetypes
## 	in your working directory. Make sure you do not have files in these
##	formats that you want to keep!

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
combo:
	makeindex
	latexmk -xelatex "-interaction=nonstopmode" main.tex

## Whenever running on Tom's machine, update to latest dependencies for paper and toolchain
update:
	if [ `hostname` = "cv-tr608-01" ] ; \
	then \
	cp /home/tr608/.pandoc/templates/chapter.xelatex . ; \
	cp /home/tr608/ImpCol/PhD/my-refs.bib . ; \
	fi
#	inkscape -D -z --file=metab.svg --export-pdf=metab.pdf --export-latex ; \

## Knit Rmarkdown to markdown
%.md: %.Rmd
	./knit.R $<

## Convert to tex using pandoc and build a standalone preview version of edited chapter
%.tex:	%.md
	./vc
	pandoc --chapters --natbib -o $@ $< ## may add in --template=chapter.xelatex later
	cat chapter.prepend $@ chapter.append > preview.tex

## Complile the preview chapter
chapter-xelatex:
	xelatex preview.tex

## Run texcount on tex files
%.count: %.tex
	texcount -sub=section $< > $@

clean:
	rm -f *.aux *.log *.out *.spl *.bbl *.blg *.fls *fdb_latexmk
