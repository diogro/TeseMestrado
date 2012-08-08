FILE = mestrado

all :
	pdflatex $(FILE)
	makeindex $(FILE).nlo -s nomencl.ist -o $(FILE).nls
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)
	rm *.aux *.bbl *.toc *.out *.log *.nls *.nlo *.lof *.lot *.blg *.ilg *.bak *-tmp
clean:
	rm *.aux *.bbl *.toc *.out *.log *.nls *.nlo *.lof *.lot *.blg *.ilg *.bak *-tmp
