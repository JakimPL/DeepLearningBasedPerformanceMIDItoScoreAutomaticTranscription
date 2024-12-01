\version "2.20.0"
% automatically converted by musicxml2ly from albeniz.mxl
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
    short-indent = 0.36905982906\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key g \major \time 3/8 \partial 4 r4 | % 1
    \stemDown b8 -. [ \stemDown dis8 -. \stemDown fis8 -. ] | % 2
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown e16 [ \stemDown fis16 \stemDown e16 }
    \stemDown c8 -. \stemDown a'8 -. ] | % 3
    \stemDown b,8 -. [ \stemDown dis8 -. \stemDown fis8 -. ] | % 4
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown e16 [ \stemDown fis16 \stemDown e16 }
    \stemDown c8 -. \stemDown a'8 -. ] \bar "|."
    }

PartPOneVoiceFive =  \relative b {
    \clef "treble" \key g \major \time 3/8 \partial 4 r4 \stemUp b8 -. [
    \stemUp dis8 -. \stemUp fis8 -. ] \once \omit TupletBracket
    \times 2/3  {
        \stemUp e16 [ \stemUp fis16 \stemUp e16 }
    \stemUp c8 -. \stemUp a'8 -. ] \stemUp b,8 -. [ \stemUp dis8 -.
    \stemUp fis8 -. ] \once \omit TupletBracket
    \times 2/3  {
        \stemUp e16 [ \stemUp fis16 \stemUp e16 }
    \stemUp c8 -. \stemUp a'16 ] r16 \bar "|."
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

