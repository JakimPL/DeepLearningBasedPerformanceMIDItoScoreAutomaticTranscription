build:
	lualatex -interaction=nonstopmode -shell-escape main.tex
	bibtex main.aux
