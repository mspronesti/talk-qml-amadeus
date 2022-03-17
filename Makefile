LATEX_OPTS="-synctex=1 -interaction=nonstopmode"

MAIN_NAME=presentation
MAIN_TEX=$(MAIN_NAME).tex

BIBLIOGRAPHY=ref.bib


all: presentation clean

.PHONY: clean
clean:  
	find . -type f \( -name "*.aux" \
		       -o -name "*.log" \
		       -o -name "*.out" \
		       -o -name "*.synctex.*" \
		       -o -name "*.fls" \
		       -o -name "*_latexmk" \
		       -o -name "*-blx.bib" \
		       -o -name "*.bbl" \
		       -o -name "*.blg" \
		       -o -name "*.run.xml" \
		       -o -name "*.vrb" \
		       -o -name "*.toc" \
		       -o -name "*.snm" \
		       -o -name "*.nav" \) \
		       -delete

.PHONY: presentation
presentation: $(MAIN_TEX) $(BIBLIOGRAPHY)
	pdflatex $(LATEX_OPTS) $(MAIN_TEX)
	pdflatex $(LATEX_OPTS) $(MAIN_TEX)

	# pdflatex -synctex=1 -interaction=nonstopmode "presentation".tex
