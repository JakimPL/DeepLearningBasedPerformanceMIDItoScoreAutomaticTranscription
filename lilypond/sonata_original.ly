\version "2.20.0"
% automatically converted by musicxml2ly from chopin_sonata_2_original.mxl
\pointAndClickOff

#(set-global-staff-size 19.9974571429)
\paper {
    
    paper-width = 21.01\cm
    paper-height = 29.69\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    indent = 1.61615384615\cm
    short-indent = 1.29292307692\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative bes, {
    \clef "bass" \key ges \major \time 3/4 | % 1
    \stemDown <bes bes'>4 -- _\f s2 | % 2
    \stemDown <es es'>8 -. [ _\< \stemDown <es es'>8 -. \stemDown <es
        es'>8 -. \stemDown <es es'>8 -. ] \stemDown <es es'>4 -> _\! | % 3
    \stemDown <f ces' es f>2 -. r4 \bar "|."
    }

PartPOneVoiceFive =  \relative bes,, {
    \clef "bass" \key ges \major \time 3/4 \stemUp bes4 -- s2 \stemUp
    <es, es'>4 -. \stemUp <e e'>8 -. [ \stemUp <f f'>8 -. ] \stemUp <ges
        ges'>4 -> \stemUp <as as'>4 -. r2 \bar "|."
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

