build:
	python bibparser.py
	lualatex -interaction=nonstopmode -shell-escape main.tex
	bibtex main.aux
