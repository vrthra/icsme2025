all:
	latexmk -pdf main.tex

push:
	git push overleaf master
