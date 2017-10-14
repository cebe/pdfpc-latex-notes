# pdflatex options
PDFLO=-halt-on-error -file-line-error -shell-escape -interaction=nonstopmode

TEXINPUTS=.::../..
OUTPUTDIR=out

PDFLATEX="TEXINPUTS=$(TEXINPUTS) pdflatex $(PDFLO) -output-directory=$(OUTPUTDIR)"

default:
	@echo "Run  make test  to run the test suite."

test:
	@for d in *test/ ; do \
		echo "Running test $$d" ; \
		cd $$d ; \
		mkdir -p $(OUTPUTDIR) ; \
		$(MAKE) -B test PDFLATEX=$(PDFLATEX) ; \
		done

clean:
	rm -rf ./*/$(OUTPUTDIR)


.PHONY: test default

# install tex dependencies
depend:
	sudo apt-get install texlive-latex-base texlive-lang-english texlive-lang-german

