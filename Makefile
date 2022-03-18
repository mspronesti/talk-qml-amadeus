LATEX_OPTS="-synctex=1 -interaction=nonstopmode"

MAIN_NAME=presentation
MAIN_TEX=$(MAIN_NAME).tex

BIBLIOGRAPHY=ref.bib

.PHONY: all
all: presentation clean

.PHONY: presentation
presentation: $(MAIN_TEX) $(BIBLIOGRAPHY)
	pdflatex $(LATEX_OPTS) $(MAIN_TEX)
	bibtex $(MAIN_NAME).aux
	pdflatex $(LATEX_OPTS) $(MAIN_TEX)
	pdflatex $(LATEX_OPTS) $(MAIN_TEX)

.PHONY: clean
clean:  
	rm -f *.aux \
              *.log \
              *.out \
              *.synctex.* \
              *.fls \
              *_latexmk \
              *-blx.bib \
              *.bbl \
              *.blg \
              *.run.xml \
              *.vrb \
              *.toc \
              *.snm \
              *.nav
