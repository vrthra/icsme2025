paper=icsme-registered
pdfviewer?=evince
$(paper).pdf: $(paper).tex $(paper).bib
	latexmk -pdf $(paper).tex

clean:
	latexmk -C

push:
	git push overleaf master

pull:
	git pull --rebase overleaf master --autostash

v:
	vim $(paper).tex
b:
	vim $(paper).bib
p:
	$(pdfviewer) $(paper).pdf

