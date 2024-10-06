\version "2.20.0"
% automatically converted by musicxml2ly from score_agnostic.mxl
\pointAndClickOff

\header {
    encodingsoftware =  "MuseScore 4.4.1"
    encodingdate =  "2024-09-15"
    }

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
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 | % 1
    \tempo 4=150 | % 1
    r8 r16 \stemUp c16 ~ \stemUp c4 \times 2/3 {
        r4 \stemUp d8 ~ }
    \stemUp d4 ~ | % 2
    \times 2/3  {
        \stemUp d8 \stemUp e4 ~ }
    \stemUp e4 \stemUp g2 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 150 }
    }

