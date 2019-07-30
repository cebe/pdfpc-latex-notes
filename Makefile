.phony: install uninstall

package = pdfpcnotes
texmfhome = $$(kpsewhich -var-value TEXMFHOME)
package_dir = $(texmfhome)/tex/latex/$(package)

install:
	mkdir -p $(package_dir)
	cp pdfpcnotes.sty $(package_dir)/
	texhash $(texmfhome)

uninstall:
	rm -rf $(package_dir)
