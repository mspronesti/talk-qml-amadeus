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
presentation:
	pdflatex -synctex=1 -interaction=nonstopmode "presentation".tex
