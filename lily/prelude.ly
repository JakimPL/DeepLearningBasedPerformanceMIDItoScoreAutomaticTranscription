\version "2.20.0"
% automatically converted by musicxml2ly from /home/mateusz/Downloads/prelude.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Prelude in E Minor"
  subtitle =  "Opus 28 No. 4"
  encodingdate =  "2024-02-25"
  encodingsoftware =  "MuseScore 4.2.1"
  source =
  "http://musescore.com/scores/frederic-chopin/preludes-op28-875095043664166"
  composer =  \markup \column {
    \line { "Frédéric Chopin"}
    \line { ""}
  }
}

PartPOneVoiceOne =  \relative b {
  \clef "treble" \key g \major \time 2/2 \partial 4 \stemUp b8.
  -\markup{ \bold {Largo} } -\markup{ \italic {espressivo} }
  \stemUp b'16 | % 1
  \stemDown b2. \stemDown c4 | % 2
  \stemDown b2. \stemDown c4 | % 3
  \stemDown b2. \stemDown c4 | % 4
  \stemDown b2. \stemDown bes4 | % 5
  \stemUp a2. \stemDown b4 | % 6
  \stemUp a2. \stemDown b4 | % 7
  \stemUp a2. \stemUp b8. \stemUp a16 \bar "|."
}

PartPOneVoiceFive =  \relative g {
  \clef "bass" \key g \major \time 2/2 \partial 4 r4 | % 1
  \stemDown <g b e>8 -\markup{ \italic {sempre legato} } \stemDown <g
  b e>8 \stemDown <g b e>8 \stemDown <g b e>8 \stemDown <g b e>8
  \stemDown <g b e>8 \stemDown <g b e>8 \stemDown <g b e>8 \stemDown
  <fis a e'>8 \stemDown <fis a e'>8 \stemDown <fis a e'>8 \stemDown
  <fis a e'>8 \stemDown <fis a es'>8 \stemDown <fis a es'>8 \stemDown
  <fis a es'>8 \stemDown <fis a es'>8 \stemDown <f a es'>8 \stemDown
  <f a es'>8 \stemDown <f a es'>8 \stemDown <f a es'>8 \stemDown <f a
  d>8 \stemDown <f a d>8 \stemDown <f gis d'>8 \stemDown <f gis
  d'>8 \stemDown <e gis d'>8 \stemDown <e gis d'>8 \stemDown <e
  gis d'>8 \stemDown <e gis d'>8 \stemDown <e g d'>8 \stemDown <e
  g d'>8 \stemDown <e g cis>8 \stemDown <e g cis>8 \stemDown <e g
  c>8 \stemDown <e g c>8 \stemDown <e g c>8 \stemDown <e g c>8
  \stemDown <e fis c'>8 \stemDown <e fis c'>8 \stemDown <e fis c'>8
  \stemDown <e fis c'>8 \stemDown <e fis c'>8 \stemDown <e fis c'>8
  \stemDown <e fis c'>8 \stemDown <e fis c'>8 \stemDown <dis fis c'>8
  \stemDown <dis fis c'>8 \stemDown <dis fis c'>8 \stemDown <dis fis
  c'>8 \stemDown <d fis c'>8 \stemDown <d fis c'>8 \stemDown <d
  fis c'>8 \stemDown <d fis c'>8 \stemDown <d fis c'>8 \stemDown
  <d fis c'>8 \stemDown <d fis c'>8 \stemDown <d fis c'>8 \bar "|."
}


% The score definition
\score {
  <<

    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.midiInstrument = #"acoustic grand"

      \context Staff = "1" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
      >> \context Staff = "2" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceFive" {  \PartPOneVoiceFive }
      >>
    >>

  >>
  \layout {}
}
\score {
  \unfoldRepeats \articulate {

    \new PianoStaff
    <<
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.midiInstrument = #"acoustic grand"

      \context Staff = "1" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
      >> \context Staff = "2" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceFive" {  \PartPOneVoiceFive }
      >>
    >>

  }
  \midi {\tempo 4 = 42 }
}
