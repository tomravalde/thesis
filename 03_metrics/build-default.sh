sh vc
Rscript knit.R
pandoc --latex-engine=xelatex --template=default.latex --include-in-header=custom-local.sty --natbib -o paper.tex paper.md 
xelatex paper
bibtex paper
xelatex paper
xelatex paper
