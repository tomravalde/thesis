## Makefile to build paper

###--------------------------------------------------
### T. Ravalde
### Last edited: 2016/05/18
### Adapted from Keiran Healy (https://github.com/kjhealy/workflow-paper/blob/master/Makefile)
###--------------------------------------------------

## Put this Makefile in your project directory
## -	Change the paths at the top of the file as needed
## -	Using `make` without arguments will generate html, tex, and pdf 
## 	output files from all of the files with the designated markdown
##	extension. The default is `.md` but you can change this. 
## -	You can specify an output format with `make tex`, `make pdf` or 
## - 	`make html`. 
## -	Doing `make clean` will remove all the .tex, .html, and .pdf files 
## 	in your working directory. Make sure you do not have files in these
##	formats that you want to keep!

###--------------------------------------------------
### Setup
###--------------------------------------------------

## Extensions for files in working directory
RMDEXT = Rmd # for all Rmarkdown files
MEXT = md # (e.g. md, markdown, mdown) for all markdown files

## Variables for files in working directory
SRC_RMD = $(wildcard *.$(RMDEXT)) # for all Rmarkdown files
SRC = $(wildcard *.$(MEXT)) # for all markdown files

## Working bibliography file
BIB=my-refs.bib

###--------------------------------------------------
### Dependencies
###--------------------------------------------------

MDS=$(SRC_RMD:.Rmd=.md)
TEXS=$(SRC_RMD:.Rmd=.tex)
COUNTS=$(SRC_RMD:.Rmd=.count)
PDFS=$(SRC_RMD:.Rmd=.pdf)
HTMLS=$(SRC:.md=.html)

###--------------------------------------------------
### Rules
###--------------------------------------------------

md:	update clean $(MDS)
tex:	update clean $(MDS) $(TEXS)
count:	$(COUNTS)
pdf:	update clean $(MDS) $(TEXS) $(COUNTS) $(PDFS)
html:	update clean $(MDS) $(HTMLS)

###--------------------------------------------------
### Commands
###--------------------------------------------------

## Whenever running on Tom's machine, update to latest dependencies for paper and toolchain
update:
	if [ `hostname` = "cv-tr608-01" ] ; \
	then \
	cp /home/tr608/ImpCol/PhD/my-refs.bib . ; \
	cp /home/tr608/workflow/elsevier.xelatex . ; \
	cp /home/tr608/.pandoc/templates/html.template . ; \
	cp /home/tr608/.pandoc/marked/kultiad-serif.css . ; \
	inkscape -D -z --file=metab.svg --export-pdf=metab.pdf --export-latex ; \
	fi

## Knit Rmarkdown to markdown
%.md: %.Rmd
	./knit.R $<

## Convert to tex using pandoc and perform wordcount
%.tex:	%.md
	pandoc --template=elsevier.xelatex --natbib -o $@ $<

## Run texcount on tex files
%.count: %.tex
	texcount -sub=section $< > $@

## Convert to PDF (using latexmk to take care of the auxilliary file faff)
%.pdf: %.tex
	latexmk -xelatex "-interaction=nonstopmode" $<

## Convert to html using pandoc and perform wordcount
%.html: %.md
	pandoc --template=html.template --mathjax --filter pandoc-citeproc --bibliography=$(BIB) -o $@ $<
	cp supInf.html ../

## View PDF output
view-pdf:
	evince $(PDFS)

## View HTML output
view-html:
	chromium-browser $(HTMLS)

## View all output
view:
	evince $(PDFS)
	chromium-browser $(HTMLS)

clean:
	rm -f *.tex *.aux *.log *.out *.spl *.bbl *.blg *.fls *fdb_latexmk
