#NoEnv
#SingleInstance, Force
#UseHook On
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 3

StartMenuWindowName := "Rechercher" ; Change this to match the title of the "Rechercher" window
if A_Args.Length() > 0
{
    StartMenuWindowName := A_Args[1]
}

TriggerEverythingToolbar()
{
    BlockInput, On
    lastKey := A_ThisHotkey
    Send, {Esc}
    WinWaitNotActive, %StartMenuWindowName%
    Send, !{Space} ; Send Alt + Space instead of Windows + Alt + S
    Sleep, 1
    Send, {%lastKey%}
    BlockInput, Off
}

; Trigger when "Rechercher" window is activated
Hotkey, IfWinActive, %StartMenuWindowName%
Characters := "!#$%&'()*+,-./0123456789:;<=>?@_abcdefghijklmnopqrstuvwxyz{}|\`àèé²,\#{[|`\ç^@]}°§ù¨¤£µ """
Loop, Parse, Characters
{
    Hotkey, %A_LoopField%, TriggerEverythingToolbar
}

NumpadKeys := "Numpad0|Numpad1|Numpad2|Numpad3|Numpad4|Numpad5|Numpad6|Numpad7|Numpad8|Numpad9|NumpadAdd|NumpadSub|NumpadMult|NumpadDiv|NumpadDot"
Loop, Parse, NumpadKeys, |
{
    Hotkey, % A_LoopField, TriggerEverythingToolbar
}

; Trigger when Ctrl+V is pressed in the start menu
#IfWinActive Rechercher
^v:: 
    TriggerEverythingToolbar()
    Send, ^v  ; Send Ctrl+V to paste clipboard content
#IfWinActive
