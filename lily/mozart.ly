\version "2.20.0"
% automatically converted by musicxml2ly from mozart.mxl
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
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative f' {
    \clef "treble" \key f \major \time 3/4 | % 1
    \stemUp f2 ( _\p \stemUp a4 ) | % 2
    \stemDown c2 ( \stemUp a4 ) | % 3
    \stemDown bes2 ( \stemDown g'4 ) | % 4
    \stemDown f8 ( [ \stemDown e8 ) ] \stemDown e4 r4 \bar "|."
    }

PartPOneVoiceFive =  \relative f {
    \clef "bass" \key f \major \time 3/4 \stemDown f8 ( [ \stemDown a8
    \stemDown c8 \stemDown a8 \stemDown c8 \stemDown a8 ] \stemDown f8 [
    \stemDown c'8 \stemDown es8 \stemDown c8 \stemDown es8 \stemDown c8
    ) ] \stemDown f,8 ( [ \stemDown bes8 \stemDown d8 \stemDown bes8
    \stemDown d8 \stemDown bes8 ) ] \stemDown f8 ( [ \stemDown g8
    \stemDown bes8 \stemDown g8 \stemDown bes8 \stemDown g8 ) ] \bar
    "|."
    }


% The score definition
\score {
    <<
        
        \new PianoStaff
        <<            
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
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }

