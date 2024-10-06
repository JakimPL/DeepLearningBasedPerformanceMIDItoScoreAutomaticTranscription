\version "2.20.0"
% automatically converted by musicxml2ly from /home/mateusz/Projects/MuseScore/Fragment.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  encodingsoftware =  "MuseScore 4.2.1"
  encodingdate =  "2024-02-21"

}

PartPOneVoiceOne =  \relative a {
  \clef "bass" \key g \major \numericTimeSignature\time 4/4 | % 1
  \stemDown <a b c e>2 \stemDown <g b c e>2 | % 2
  \stemDown <fis a c e>2 \stemDown <c' d>4 \stemDown <g a c e>8
  \stemDown <g a c e>8 | % 3
  \stemDown <a b c e>2 \stemDown <g b e fis>2 | % 4
  \clef "treble" | % 4
  \stemUp <b c a'>2 \stemUp <b g'>4 \stemUp <b a'>4 | % 5
  \stemUp <c b'>2 \stemUp <c b'>2 | % 6
  \stemUp <c a' d>2 \stemUp <e b'>4 \stemUp <e d'>8 \stemUp <e d'>8 | % 7
  \stemUp <e c'>2 \stemUp <e fis d'>2 | % 8
  <e a c e>1 | % 9
  \stemUp <e a b c e>4 \stemUp <e a b c e>8 \stemUp <e a b c e>8
  \stemUp <e g b c e>4 \stemUp <e g b c>8 \stemUp <e g b>8 |
  \barNumberCheck #10
  <e fis a>1 \bar "|."
}

PartPOneVoiceFive =  \relative a, {
  \clef "bass" \key g \major \numericTimeSignature\time 4/4 \stemUp a2
  \stemUp g2 fis1 \stemUp a2 \stemUp g2 \stemUp <a e'>2 \stemUp <a d>2
  \stemDown <a a'>2 \stemUp <g g'>2 \stemUp <fis fis'>2 \stemUp c''4
  \stemUp <g a>4 \stemDown <e a b>2 \stemDown <e g b>2 e1 \stemDown
  <a, a'>2 \stemDown <b g'>2 <d fis>1 \bar "|."
}

PartPOneVoiceSix =  \relative e {
  \clef "bass" \key g \major \numericTimeSignature\time 4/4 s2*11
  \stemDown e2 s1 <a c>1 s1*2 \bar "|."
}


% The score definition
\score {
  <<

    \new PianoStaff
    <<
      \context Staff = "1" <<
        \override Score.MetronomeMark.padding = #3
        \tempo 4 = 53
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
      >> \context Staff = "2" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceFive" {  \voiceOne \PartPOneVoiceFive }
        \context Voice = "PartPOneVoiceSix" {  \voiceTwo \PartPOneVoiceSix }
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
      \set PianoStaff.shortInstrumentName = "Pno."
      \set PianoStaff.midiInstrument = #"acoustic grand"

      \context Staff = "1" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
      >> \context Staff = "2" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceFive" {  \voiceOne \PartPOneVoiceFive }
        \context Voice = "PartPOneVoiceSix" {  \voiceTwo \PartPOneVoiceSix }
      >>
    >>

  }
  \midi {\tempo 4 = 53 }
}
