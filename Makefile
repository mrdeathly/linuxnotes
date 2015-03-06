.PHONY: clean all

NAME=linuxnotes
all:	linuxnotes.pdf

clean:
	rm -f *.log
	rm -f *.aux
	rm -f *.toc
	rm -f *.out
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.nav
	rm -f *.snm

linuxnotes.pdf:
	pdflatex $(NAME).tex

build:
	latexmk -pvc -pdf $(NAME).tex
