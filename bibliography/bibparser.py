from pathlib import Path
import bibtexparser
from bibtexparser.bwriter import BibTexWriter

PATH = Path("biblio.bib")
TARGET_PATH = Path("bibliography.bib")

if __name__ == "__main__":
    with open(PATH, "r") as file:
        bibliography = bibtexparser.load(file)

    writer = BibTexWriter()
    writer.indent = '    '
    writer.comma_first = False

    with open(TARGET_PATH, "w") as file:
        bibliography = file.write(writer.write(bibliography))
