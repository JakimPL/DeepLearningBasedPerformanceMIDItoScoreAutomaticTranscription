# _Deep Learning-Based Performance MIDI to Score Automatic Transcription_

The repository contains the source code for my master's thesis. The thesis is written in (Lua)LaTeX. To compile the sources, run:

```bash
make build
```

For the first time you need to compile LilyPond images with:

```bash
make process_lily
```

To clean the repository and remove auxiliary files, run:

```bash
make clean
```

To run the entire pipeline, run:

```bash
make full
```

## Dependencies

The thesis is written in LuaLaTeX. The following packages are required:
* `LuaLaTeX` with several additional packages:
  * `fontspec`
  * `lilyglyphs`
  * `tikz` 
  * `svg`
  * `shellesc`
  * `graphicx`
  * `amssymb`
  * `amsthm`
  * `array`
  * `color`
  * `setspace`
  * `enumitem`
  * `hyperref`
  * `algorithm`
  * `algpseudocode`
* `Python 3.6+` with `bibtexparser`
* `lilypond`