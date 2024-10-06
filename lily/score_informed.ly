\version "2.20.0"
% automatically converted by musicxml2ly from score_informed.mxl
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
        \override SpacingSpanner.spacing-increment = #5
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \numericTimeSignature\time 4/4 \partial
    
    4 r4 | % 1
    \tempo 4=86 | % 1
    \stemUp c4 \tempo 4=80 \stemUp d4 \tempo 4=86 \stemUp e4 \tempo 4=92
    \stemUp g4 \bar "|."
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
    %  \midi {\tempo 4 = 86 }
    }

