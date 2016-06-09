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
	pandoc --template=default.latex --include-in-header=custom-local.sty --natbib -o $FILENAME.tex $FILENAME.md 

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
    firefox $WORDCOUNT
fi
