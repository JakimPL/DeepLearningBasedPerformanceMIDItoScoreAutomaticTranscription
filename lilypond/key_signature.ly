\version "2.20.0"

\relative c' {
\omit Score.TimeSignature
  \clef "treble"
  \once \override Score.BarLine.break-visibility = ##(#f #t #t)
  \key g \major
  \hideNotes
  e4
}
