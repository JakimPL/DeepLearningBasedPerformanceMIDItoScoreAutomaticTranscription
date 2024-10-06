full:
	make clean
	make process_lily_files
	make build

clean:
	rm -f bibliography/bibliography.bib
	rm -rf svg-inkscape
	rm -f images/*_gen.svg
	rm -f lily/*.svg
	rm -f *.aux *.bbg *.bbl *.blg *.loa *.lof *.log *.lot *.out *.pdf *.toc

build:
	python bibparser.py
	lualatex -interaction=nonstopmode -shell-escape main.tex
	bibtex main.aux

process_lily_files:
	cd lily && \
    for file in *.ly; do \
		lilypond -dbackend=svg -dcrop $$file; \
		cropped_file=$${file%.ly}.cropped.svg; \
		output_file=../images/$$(basename $${cropped_file%.cropped.svg}_gen.svg); \
	cp $$cropped_file $$output_file; \
	done