\version "2.20.0"
\pointAndClickOff

#(set-global-staff-size 19.9974571429)

\paper {
    paper-width = 21.59\cm
    paper-height = 27.94\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    indent = 1.66076923077\cm
    short-indent = 1.32861538462\cm
}

\layout {
    \context {
        \Score
        skipBars = ##t
        autoBeaming = ##f
        \override NonMusicalPaperColumn.line-break-system-details.fixed-space = 2.5
    }
    \context {
      
        \Staff
        \remove "Time_signature_engraver"
        \remove "Clef_engraver"
        \remove "Bar_engraver"
        \remove "Staff_symbol_engraver"
    }
}

PartPOneVoiceOne = \relative f' {
    \key c \major
    \stemUp
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
    \override NoteHead.color = #(x11-color 'gray)
    \override Stem.color = #(x11-color 'gray)
    \override Beam.color = #(x11-color 'gray)
    [f16 f32 f32 ]
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
    \override NoteHead.color = #(x11-color 'gray50)
    \override Stem.color = #(x11-color 'gray50)
    \override Beam.color = #(x11-color 'gray50)
    [f8 f16 f16]

    \override NoteHead.color = #(x11-color 'black)
    \override Stem.color = #(x11-color 'black)
    \override Beam.color = #(x11-color 'black)
    f8 [ f16 f8 ] f4
    f8. [ f8 ]
}

\score {
    <<
        \new Staff
        <<
            \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>
}
