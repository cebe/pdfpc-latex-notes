test: test.pdf
	# exists non-zero if files are different
	diff expected.pdfpc out/test.pdfpc

%.pdf: %.tex
	$(PDFLATEX) $< > out/pdflatex.log

