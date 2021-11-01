MAINPDF = it1.pdf it1pr.pdf
TEXFILES=document.tex environments.tex kapitel1.tex kapitel2.tex kapitel3.tex kapitel4.tex macros.tex numbering.tex packages.tex
CODE=Code/prime_factorizations.sage

all : $(MAINPDF)

it1.pdf : it1.tex $(TEXFILES) $(CODE)
	pdflatex it1.tex
	pdflatex it1.tex

it1pr.pdf : it1pr.tex $(TEXFILES) $(CODE)
	pdflatex it1pr.tex
	pdflatex it1pr.tex
