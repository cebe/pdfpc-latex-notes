# pdflatex options
PDFLO=-halt-on-error -file-line-error -shell-escape -interaction=nonstopmode

TEXINPUTS=.::../..
OUTPUTDIR=out

PDFLATEX="TEXINPUTS=$(TEXINPUTS) pdflatex $(PDFLO) -output-directory=$(OUTPUTDIR)"

default:
	@echo "Run  make test  to run the test suite."

test:
	@set -e ; for d in *-test ; do \
		echo "" ; \
		echo "\033[01mRunning test $$d...\033[0m" ; \
		cd $$d ; \
		mkdir -p $(OUTPUTDIR) ; \
		$(MAKE) -B test PDFLATEX=$(PDFLATEX) || (echo "\033[01;31mFailed!\033[0m" ; exit 1) ; \
		cd .. ; \
		echo "\033[01;32mSuccess!\033[0m" ; \
	done
	@echo ""
	@echo "\033[01;32mAll tests successful!\033[0m" ; \

clean:
	rm -rf ./*/$(OUTPUTDIR)


.PHONY: test default

# install tex dependencies
depend:
	sudo apt-get install texlive-latex-base texlive-lang-english texlive-lang-german

