MAINPDF := \
$(shell find . -maxdepth 1 -iname "it1*.tex" -exec basename {}  \; | sed 's|.tex|.pdf|g')

TEXFILES := \
$(shell find . -maxdepth 1 -type f \( -iname "*.tex" -and -not -iname "it1*.tex" \) -exec basename {} \;)

all : $(MAINPDF)

%.pdf : %.tex $(TEXFILES)
	pdflatex $(basename $@ .pdf).tex
	pdflatex $(basename $@ .pdf).tex
