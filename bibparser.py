from pathlib import Path
import bibtexparser
from bibtexparser.bwriter import BibTexWriter

BASE_PATH = Path("bibliography")
PATH = BASE_PATH / "bibsource.bib"
TARGET_PATH = BASE_PATH / "bibliography.bib"

if __name__ == "__main__":
    with open(PATH, "r") as file:
        bibliography = bibtexparser.load(file)

    writer = BibTexWriter()
    writer.indent = "    "
    writer.comma_first = False

    with open(TARGET_PATH, "w") as file:
        bibliography = file.write(writer.write(bibliography))

    print("Bibliography updated.")