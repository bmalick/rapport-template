help:
	@echo "Usage: make compile | make clean"

compile:
	@mkdir -p report
	@pdflatex -jobname=report -output-directory=report src/main.tex
	@bibtex report/report.aux
	@pdflatex -jobname=report -output-directory=report src/main.tex
	@pdflatex -jobname=report -output-directory=report src/main.tex
	@mv report/report.pdf .

clean:
	@rm -r report
