test.pdf: test.tex
	pdflatex test.tex
	sed -i 's/\\\\/\n/g' test.pdfpc
	sed -i 's/\\par/\n\n/g' test.pdfpc

test.pdfpc: test.pdf

all: test.pdf test.pdfpc
