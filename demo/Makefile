# pdflatex options
PDFLO=-halt-on-error -file-line-error -shell-escape -interaction=nonstopmode
TEXINPUTS=.::..

all: test.pdf test.pdfpc

test.pdf: test.tex
	TEXINPUTS=$(TEXINPUTS) pdflatex $(PDFLO) $<

test.pdfpc: test.pdf
	sed -i 's/\\\\/\n/g' test.pdfpc
	sed -i 's/\\par/\n\n/g' test.pdfpc

