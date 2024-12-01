\version "2.20.0"
% automatically converted by musicxml2ly from claire_de_lune_output.mxl
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
    short-indent = 1.42351648352\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f'' {
    \clef "treble" \key des \major \numericTimeSignature\time 4/4 | % 1
    r2 \stemDown f4 \stemDown des4 ~ | % 2
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown <des f>8 [ \stemDown <c es>8 \stemDown <des f>8 ] }
    \stemDown es2 ~ \once \omit TupletBracket
    \times 2/3  {
        \stemDown es8 [ \stemDown <bes des>8 \stemDown <c es>8 ] }
    | % 3
    \stemDown des4 \times 2/3 {
        \stemDown f4 \stemDown des8 ~ }
    \stemUp des16 [ \stemUp c8 \stemUp des16 ] \stemDown c4 \bar "|."
    }

PartPOneVoiceTwo =  \relative as'' {
    \clef "treble" \key des \major \numericTimeSignature\time 4/4 s2
    \stemDown as4 \stemDown f4 ~ s1. \times 2/3 {
        r8 \stemDown as,8 [ \stemDown bes8 ] }
    s4 \bar "|."
    }

PartPOneVoiceFive =  \relative f' {
    \clef "treble" \key des \major \numericTimeSignature\time 4/4 r4
    \stemUp <f as>2. \stemUp ges2. \stemDown f4 _~ \stemUp f2 \stemUp es2
    \bar "|."
    }

PartPOneVoiceSeven =  \relative c'' {
    \clef "treble" \key des \major \numericTimeSignature\time 4/4 s4*5
    \stemUp c2. \stemUp bes2. \stemUp as4 \bar "|."
    }

PartPOneVoiceSix =  \relative a' {
    \clef "treble" \key des \major \numericTimeSignature\time 4/4 s1
    \stemUp a2. \stemUp as4 ~ \stemUp as2 \stemUp ges2 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new PianoStaff
        <<            
            \context Staff = "1" << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \voiceOne \PartPOneVoiceOne }
                \context Voice = "PartPOneVoiceTwo" {  \voiceTwo \PartPOneVoiceTwo }
                >> \context Staff = "2" <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceFive" {  \voiceOne \PartPOneVoiceFive }
                \context Voice = "PartPOneVoiceSeven" {  \voiceTwo \PartPOneVoiceSeven }
                \context Voice = "PartPOneVoiceSix" {  \voiceThree \PartPOneVoiceSix }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }

