ENGINE=xelatex
FILENAME=paper
BROWSER=firefox
WORDCOUNT=count.html

# Update version control information
sh vc

# Knit the source file
Rscript knit.R

# Convert Markdown to TeX
# Note that you can't use --latex-engine here because it won't run bibtex
if [ `hostname` = "cv-tr608-01" ]
then
	cp /home/tr608/ImpCol/PhD/my-refs.bib my-refs.bib
	cp /home/tr608/workflow/elsevier.xelatex elsevier.xelatex
	inkscape -D -z --file=models.svg --export-pdf=models.pdf --export-latex
	inkscape -D -z --file=model-family.svg --export-pdf=model-family.pdf --export-latex
	inkscape -D -z --file=pipe-dam-example.svg --export-pdf=pipe-dam-example.pdf --export-latex
	inkscape -D -z --file=network-1.svg --export-pdf=network-1.pdf --export-latex
fi
	pandoc --template=elsevier.xelatex --natbib -o $FILENAME.tex $FILENAME.md 

# Manually compile the file
$ENGINE $FILENAME
bibtex $FILENAME
$ENGINE $FILENAME
$ENGINE $FILENAME

# Do the wordcount
texcount -sub=section -html $FILENAME.tex > $WORDCOUNT

# Show the file PDF and wordcount
if [[ `uname` == 'Darwin' ]];
then
    open -a Preview $FILENAME.pdf
    open -a Safari $WORDCOUNT
else
    acroread $FILENAME.pdf
#    firefox $WORDCOUNT
    chromium-browser $WORDCOUNT
fi
