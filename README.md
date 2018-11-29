# README

## Content

This repository contains content for the PhD thesis:

- The [main latex file](main.tex) and the [title page](title.tex) are edited as tex files
- The [abstract](abstract.Rmd) and [acknowledgements](acknowledgements.Rmd) are edited as Rmd files
- All chapters and appendices are edited as Rmd files

A [Makefile](Makefile) allows either the entire thesis to be built, or just a preview version of a single chapter.

## Structure

All the Rmd files which contain the thesis source (e.g. chapters, appendices, acknowledgements etc.) are stored in the top level of this directory, e.g. [03_metrics.Rmd](03_metrics.Rmd). Anything else called by these Rmd source files (e.g. images, tex files, etc.) are stored within their own subdirectory, e.g. [03_metrics/](03_metrics/).

## Dependencies

- My user-defined package [mystyle](mystyle.sty) defines the packages, user-defined commands etc., and is called in main.tex
- [chapter.prepend](chapter.prepend) and [chapter.append](chapter.append) are used to top and tail a chapter tex code with LaTeX code to allow the preview version of a chapter to be built (including mystyle).

## Building the thesis

To preview the most recently edited chapter, run:

	$ make chapter

To build the entire thesis, run:

	$ make thesis

## Miscellaneous

- The Rmd source for [Chapter 1](01_introduction.Rmd) includes a line of LaTeX code which switches the page numbering from roman to Arabic format: `pagenumbering{arabic}`.

## TODO

- [ ] TODO item

## More information

Please contact [Tom Ravalde](mailto:thomas.ravalde08@imperial.ac.uk)
