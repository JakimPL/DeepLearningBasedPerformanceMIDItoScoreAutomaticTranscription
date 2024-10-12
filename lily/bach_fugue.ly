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

PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4
    \stemDown
    \override NoteHead.color = #(x11-color 'gray30)
    \override Stem.color = #(x11-color 'gray30)
    \override Beam.color = #(x11-color 'gray30)
    \override Accidental.color = #(x11-color 'gray30)
    \override Rest.color = #(x11-color 'gray30)
    \override Dots.color = #(x11-color 'gray30)
    a16 [ b16 a16 gis16 ]
    fis8 [ f8 ] e8 [ d8 ~ ]
    d16 [ e16 fis16 gis16 ]
    \bar "|."
}

PartPOneVoiceTwo =  \relative d'' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4
    \stemUp
    \override NoteHead.color = #(x11-color 'gray60)
    \override Stem.color = #(x11-color 'gray60)
    \override Beam.color = #(x11-color 'gray60)
    \override Accidental.color = #(x11-color 'gray60)
    \override Rest.color = #(x11-color 'gray60)
    \override Dots.color = #(x11-color 'gray60)
    d8 [ c16 b16 ] a16 [ gis16 a16 b16 ]
    c16 [ fis,16 gis16 a16 ] b8 [ a16 b16 ]
    \bar "|."
}

PartPOneVoiceFive =  \relative e {
    \clef "bass" \key c \major \numericTimeSignature\time 4/4
    \stemUp
    \override NoteHead.color = #(x11-color 'gray40)
    \override Stem.color = #(x11-color 'gray40)
    \override Beam.color = #(x11-color 'gray40)
    \override Accidental.color = #(x11-color 'gray40)
    \override Rest.color = #(x11-color 'gray40)
    \override Dots.color = #(x11-color 'gray40)
    r8
    e8 [ fis8 gis8 ] a8. [ b32 a32 ] gis8 [ c8 ]
    \bar "|."
}

PartPOneVoiceSix =  \relative b, {
    \clef "bass" \key c \major \numericTimeSignature\time 4/4
    \stemDown
    \override NoteHead.color = #(x11-color 'gray00)
    \override Stem.color = #(x11-color 'gray00)
    \override Beam.color = #(x11-color 'gray00)
    \override Accidental.color = #(x11-color 'gray00)
    \override Rest.color = #(x11-color 'gray00)
    \override Dots.color = #(x11-color 'gray00)
    b8 e4 d8 c8 f4 e8
    \bar "|."
}

\score {
    <<
        \new PianoStaff
        <<
            \context Staff = "1" <<
                \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
                \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
            >>
            \context Staff = "2" <<
                \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceFive" { \voiceOne \PartPOneVoiceFive }
                \context Voice = "PartPOneVoiceSix" { \voiceTwo \PartPOneVoiceSix }
            >>
        >>
    >>
    % \midi { \tempo 4 = 100 }
}
