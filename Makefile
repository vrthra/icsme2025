paper=icsme-registered
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
