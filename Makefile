all:
	latexmk -pdf main.tex

push:
	git push overleaf master

pull:
	git pull --rebase overleaf master --autostash
