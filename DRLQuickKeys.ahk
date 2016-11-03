#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$F2::
{
;multiplayer server launcher

IfWinNotActive, DRL Simulator, , return 
MouseClick, left,  243,  213
Sleep, 500
;set region, east
MouseClick, left,  299,  390
Sleep, 500
;create server
MouseClick, left,  312,  508
;wait for server to load
Sleep, 5000
MouseClick, left,  354,  344
Sleep, 500
Send, {SHIFTDOWN}q{SHIFTUP}uick{SHIFTDOWN}s{SHIFTUP}erver

;set mode to race
MouseClick, left,  1098,  537

;gates is default map

Sleep, 500
;set map Miami
MouseClick, left,  1074,  584
Sleep, 250
;set map Lapocalypse
MouseClick, left,  1074,  584
Sleep, 250
;set map bell labs
;MouseClick, left,  1074,  584
;Sleep, 250
;set map straight
;MouseClick, left,  1074,  584
;Sleep, 250

;start
MouseClick, left,  309,  858
}


$F3::
{
;end race reset
IfWinNotActive, DRL Simulator, , return 
MouseClick, left,  1530,  1118
Sleep, 4000
MouseClick, left,  1530,  1119
Sleep, 3000
Send, {SPACE}
}


$F4::
{
IfWinNotActive, DRL Simulator, , return 
;quick mid race reset
Send, {ALTDOWN}r{ALTUP}
Sleep, 3000
Send, {SPACE}
}
