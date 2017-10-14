test: test.pdf
	# exists non-zero if files are different
	diff test.pdfpc out/test.pdfpc

%.pdf: %.tex
	$(PDFLATEX) $<

