icsme-registered.pdf: icsme-registered.tex icsme-registered.bib bsearch.tex
	latexmk -pdf icsme-registered.tex

clean:
	latexmk -C

push:
	git push overleaf master

pull:
	git pull --rebase overleaf master --autostash
