pdfpc-latex-notes
=================

This is a Latex Package that allows creating [pdfpc](http://davvil.github.io/pdfpc/)
compatible notes file directly from your latex presentation `\note`s.

It was created as a result from a [question on stackoverflow](http://tex.stackexchange.com/questions/119191/extract-all-note-tags-from-beamer-as-a-simple-text-file/119267#119267).

Usage
-----

Download [pdfpcnotes.sty](https://raw.github.com/cebe/pdfpc-latex-notes/master/pdfpcnotes.sty)
from github and put it somewhere where latex can find it.  
The same directory as your `.tex` file will work.

Add `\usepackage{pdfpcnotes}` somewhere before `\begin{document}` in your `.tex`-file.

You can then use the `\pnote{}` command like you used `\note{}` before.
Behavior will be the same but it will additionally write notes to file in pdfpc readable format.

When running for example `pdflatex` you will end up with an additional `.pdfpc` file that
will automatically be recognized by pdfpc and displays your notes nicely in the notes section on your control screen.


Anything not working yet?
-------------------------

- It does not preserve newlines, so everything in a `\pnote{}` will end up
  in one line of the output file.
  To replace newlines and paragraphs you may use the following commands:

  ```
      sed -i 's/\\\\/\n/g' slides.pdfpc
      sed -i 's/\\par/\n\n/g' slides.pdfpc
  ```

Contact
-------

I'm happy to receive your feedback!
Drop me a line to mail@cebe.cc or write in github issue tracker if you find a bug.
