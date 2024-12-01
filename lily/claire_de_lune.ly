\version "2.20.0"
% automatically converted by musicxml2ly from claire_de_lune.mxl
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
PartPOneVoiceOne =  \relative f'' {
    \clef "treble" \key des \major \time 9/8 | % 1
    r4 \stemDown <f as>8 ~ ~ \stemDown <f as>4. \stemDown <des f>4. ~ ~
    | % 2
    \stemDown <des f>8 [ \stemDown <c es>8 \stemDown <des f>8 ]
    \stemDown <c es>2. ~ ~ | % 3
    \stemDown <c es>8 [ \stemDown <bes des>8 \stemDown <c es>8 ] \stemUp
    des8. [ \stemUp f8. ~ ] \stemUp f8. [ \stemUp des8. ~ ] | % 4
    \stemUp des8 [ \stemUp <as c>8 \stemUp <bes des>8 ] \stemDown <as c>2.
    \bar "|."
    }

PartPOneVoiceTwo =  \relative bes' {
    \clef "treble" \key des \major \time 9/8 s8*21 \stemDown bes2. ~
    \stemDown bes4 s8*7 \bar "|."
    }

PartPOneVoiceFive =  \relative f' {
    \clef "treble" \key des \major \time 9/8 r8 \stemUp <f as>4 ~ ~
    \stemUp <f as>2. \stemUp <ges a>2.. ~ ~ \stemUp <ges a>4 \stemUp <f
        as>2. ~ ~ \stemUp <f as>4. \stemUp <es ges>2. ~ ~ \stemUp <es
        ges>4. \bar "|."
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
                \context Voice = "PartPOneVoiceFive" {  \PartPOneVoiceFive }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }

