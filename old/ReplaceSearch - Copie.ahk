#NoEnv
#SingleInstance, Force
#UseHook On
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 3


StartMenuWindowName := "Rechercher" ; Change this to match the title of the "Rechercher" window
global g_BufferedKeys := []
global HotkeysEnabled := 1 ; Flag to control hotkey activation

if A_Args.Length() > 0
{
    StartMenuWindowName := A_Args[1]
}

TriggerPowerToysRun(key)
{
    BufferInput()
    HotkeysEnabled := 0 ; Turn off other hotkeys
    Send, {Esc}
    WinWaitNotActive, %StartMenuWindowName%
    Send, !{Space}
    WinWaitActive, ahk_exe PowerToys.PowerLauncher.exe, , 1
    Send, %key%
    BufferInput(0)
    HotkeysEnabled := 1 ; Re-enable hotkeys
}

#If WinActive("Rechercher") and HotkeysEnabled
    a::TriggerPowerToysRun("a") ; Trigger when "a" is pressed in the start menu
    b::TriggerPowerToysRun("b") ; Trigger when "b" is pressed in the start menu
    c::TriggerPowerToysRun("c") ; Trigger when "c" is pressed in the start menu
    d::TriggerPowerToysRun("d") ; Trigger when "d" is pressed in the start menu
    e::TriggerPowerToysRun("e") ; Trigger when "e" is pressed in the start menu
    f::TriggerPowerToysRun("f") ; Trigger when "f" is pressed in the start menu
    g::TriggerPowerToysRun("g") ; Trigger when "g" is pressed in the start menu
    h::TriggerPowerToysRun("h") ; Trigger when "h" is pressed in the start menu
    i::TriggerPowerToysRun("i") ; Trigger when "i" is pressed in the start menu
    j::TriggerPowerToysRun("j") ; Trigger when "j" is pressed in the start menu
    k::TriggerPowerToysRun("k") ; Trigger when "k" is pressed in the start menu
    l::TriggerPowerToysRun("l") ; Trigger when "l" is pressed in the start menu
    m::TriggerPowerToysRun("m") ; Trigger when "m" is pressed in the start menu
    n::TriggerPowerToysRun("n") ; Trigger when "n" is pressed in the start menu
    o::TriggerPowerToysRun("o") ; Trigger when "o" is pressed in the start menu
    p::TriggerPowerToysRun("p") ; Trigger when "p" is pressed in the start menu
    q::TriggerPowerToysRun("q") ; Trigger when "q" is pressed in the start menu
    r::TriggerPowerToysRun("r") ; Trigger when "r" is pressed in the start menu
    s::TriggerPowerToysRun("s") ; Trigger when "s" is pressed in the start menu
    t::TriggerPowerToysRun("t") ; Trigger when "t" is pressed in the start menu
    u::TriggerPowerToysRun("u") ; Trigger when "u" is pressed in the start menu
    v::TriggerPowerToysRun("v") ; Trigger when "v" is pressed in the start menu
    w::TriggerPowerToysRun("w") ; Trigger when "w" is pressed in the start menu
    x::TriggerPowerToysRun("x") ; Trigger when "x" is pressed in the start menu
    y::TriggerPowerToysRun("y") ; Trigger when "y" is pressed in the start menu
    z::TriggerPowerToysRun("z") ; Trigger when "z" is pressed in the start menu
    !::TriggerPowerToysRun("!") ; Trigger when "!" is pressed in the start menu
    #::TriggerPowerToysRun("#") ; Trigger when "#" is pressed in the start menu
    $::TriggerPowerToysRun("$") ; Trigger when "$" is pressed in the start menu
    &::TriggerPowerToysRun("&") ; Trigger when "&" is pressed in the start menu
    *::TriggerPowerToysRun("*") ; Trigger when "*" is pressed in the start menu
    -::TriggerPowerToysRun("-") ; Trigger when "-" is pressed in the start menu
    .::TriggerPowerToysRun(".") ; Trigger when "." is pressed in the start menu
    /::TriggerPowerToysRun("/") ; Trigger when "/" is pressed in the start menu
    0::TriggerPowerToysRun("0") ; Trigger when "0" is pressed in the start menu
    1::TriggerPowerToysRun("1") ; Trigger when "1" is pressed in the start menu
    2::TriggerPowerToysRun("2") ; Trigger when "2" is pressed in the start menu
    3::TriggerPowerToysRun("3") ; Trigger when "3" is pressed in the start menu
    4::TriggerPowerToysRun("4") ; Trigger when "4" is pressed in the start menu
    5::TriggerPowerToysRun("5") ; Trigger when "5" is pressed in the start menu
    6::TriggerPowerToysRun("6") ; Trigger when "6" is pressed in the start menu
    7::TriggerPowerToysRun("7") ; Trigger when "7" is pressed in the start menu
    8::TriggerPowerToysRun("8") ; Trigger when "8" is pressed in the start menu
    9::TriggerPowerToysRun("9") ; Trigger when "9" is pressed in the start menu
    <::TriggerPowerToysRun("<") ; Trigger when "<" is pressed in the start menu
    =::TriggerPowerToysRun("=") ; Trigger when "=" is pressed in the start menu
    >::TriggerPowerToysRun(">") ; Trigger when ">" is pressed in the start menu
    ?::TriggerPowerToysRun("?") ; Trigger when "?" is pressed in the start menu
    @::TriggerPowerToysRun("@") ; Trigger when "@" is pressed in the start menu
    _::TriggerPowerToysRun("_") ; Trigger when "_" is pressed in the start menu
    |::TriggerPowerToysRun("|") ; Trigger when "|" is pressed in the start menu
    ^::TriggerPowerToysRun("{^}") ; Trigger when "^" is pressed in the start menu
    Numpad0::TriggerPowerToysRun("0") ; Trigger when Numpad0 is pressed in the start menu
    Numpad1::TriggerPowerToysRun("1") ; Trigger when Numpad1 is pressed in the start menu
    Numpad2::TriggerPowerToysRun("2") ; Trigger when Numpad2 is pressed in the start menu
    Numpad3::TriggerPowerToysRun("3") ; Trigger when Numpad3 is pressed in the start menu
    Numpad4::TriggerPowerToysRun("4") ; Trigger when Numpad4 is pressed in the start menu
    Numpad5::TriggerPowerToysRun("5") ; Trigger when Numpad5 is pressed in the start menu
    Numpad6::TriggerPowerToysRun("6") ; Trigger when Numpad6 is pressed in the start menu
    Numpad7::TriggerPowerToysRun("7") ; Trigger when Numpad7 is pressed in the start menu
    Numpad8::TriggerPowerToysRun("8") ; Trigger when Numpad8 is pressed in the start menu
    Numpad9::TriggerPowerToysRun("9") ; Trigger when Numpad9 is pressed in the start menu
    NumpadAdd::TriggerPowerToysRun("{+}") ; Trigger when NumpadAdd is pressed in the start menu
    NumpadSub::TriggerPowerToysRun("-") ; Trigger when NumpadSub is pressed in the start menu
    NumpadMult::TriggerPowerToysRun("*") ; Trigger when NumpadMult is pressed in the start menu
    NumpadDiv::TriggerPowerToysRun("/") ; Trigger when NumpadDiv is pressed in the start menu
    NumpadDot::TriggerPowerToysRun(".") ; Trigger when NumpadDot is pressed in the start menu
    $(::TriggerPowerToysRun("(") ; Trigger when "]" is pressed in the start menu
    $)::TriggerPowerToysRun(")") ; Trigger when "]" is pressed in the start menu
    %::TriggerPowerToysRun("%") ; Trigger when "%" is pressed in the start menu
    $'::TriggerPowerToysRun("'") ; Trigger when "'" is pressed in the start menu
    $,::TriggerPowerToysRun(",") ; Trigger when "," is pressed in the start menu
    $;::TriggerPowerToysRun(";") ; Trigger when ";" is pressed in the start menu
    $"::TriggerPowerToysRun("""") ; Trigger when '"' is pressed in the start menu
    $+::TriggerPowerToysRun("{+}") ; Trigger when "+" is pressed in the start menu
    $<^>!\::TriggerPowerToysRun("{\}") ; Trigger when "\" is pressed in the start menu
    $<^>!{::TriggerPowerToysRun("{{}") ; Trigger when "{" is pressed in the start menu
    $<^>!}::TriggerPowerToysRun("{}}") ; Trigger when "}" is pressed in the start menu
    $<^>!#::TriggerPowerToysRun("{#}") ; Trigger when "#" is pressed in the start menu
    $<^>![::TriggerPowerToysRun("{[}") ; Trigger when "[" is pressed in the start menu
    $<^>!]::TriggerPowerToysRun("{]}") ; Trigger when "]" is pressed in the start menu
    $<^>!~::TriggerPowerToysRun("{~}") ; Trigger when "~" is pressed in the start menu
    $<^>!|::TriggerPowerToysRun("{|}") ; Trigger when "|" is pressed in the start menu
    $<^>!`::TriggerPowerToysRun("{``}") ; Trigger when "`" is pressed in the start menu
    $<^>!@::TriggerPowerToysRun("{@}") ; Trigger when "@" is pressed in the start menu
    $space::TriggerPowerToysRun("{Space}") ; Trigger when Space is pressed in the start menu
    $é::TriggerPowerToysRun("é") ; Trigger when "é" is pressed in the start menu
    $è::TriggerPowerToysRun("è") ; Trigger when "è" is pressed in the start menu
    $ç::TriggerPowerToysRun("ç") ; Trigger when "ç" is pressed in the start menu
    $à::TriggerPowerToysRun("à") ; Trigger when "à" is pressed in the start menu
    $°::TriggerPowerToysRun("°") ; Trigger when "°" is pressed in the start menu
    $²::TriggerPowerToysRun("²") ; Trigger when "²" is pressed in the start menu
    $¨::TriggerPowerToysRun("¨") ; Trigger when "¨" is pressed in the start menu
    $<^>!¤::TriggerPowerToysRun("¤") ; Trigger when "¤" is pressed in the start menu
    $£::TriggerPowerToysRun("£") ; Trigger when "£" is pressed in the start menu
    $µ::TriggerPowerToysRun("µ") ; Trigger when "µ" is pressed in the start menu
    $ù::TriggerPowerToysRun("ù") ; Trigger when "ù" is pressed in the start menu
    $§::TriggerPowerToysRun("§") ; Trigger when "§" is pressed in the start menu
    $<^>!€::TriggerPowerToysRun("€") ; Trigger when "€" is pressed in the start menu
    :::TriggerPowerToysRun(":") ; Trigger when ":" is pressed in the start menu
    $+a::TriggerPowerToysRun("A") ; Trigger when "A" is pressed in the start menu
    $+b::TriggerPowerToysRun("B") ; Trigger when "B" is pressed in the start menu
    $+c::TriggerPowerToysRun("C") ; Trigger when "C" is pressed in the start menu
    $+d::TriggerPowerToysRun("D") ; Trigger when "D" is pressed in the start menu
    $+e::TriggerPowerToysRun("E") ; Trigger when "E" is pressed in the start menu
    $+f::TriggerPowerToysRun("F") ; Trigger when "F" is pressed in the start menu
    $+g::TriggerPowerToysRun("G") ; Trigger when "G" is pressed in the start menu
    $+h::TriggerPowerToysRun("H") ; Trigger when "H" is pressed in the start menu
    $+i::TriggerPowerToysRun("I") ; Trigger when "I" is pressed in the start menu
    $+j::TriggerPowerToysRun("J") ; Trigger when "J" is pressed in the start menu
    $+k::TriggerPowerToysRun("K") ; Trigger when "K" is pressed in the start menu
    $+l::TriggerPowerToysRun("L") ; Trigger when "L" is pressed in the start menu
    $+m::TriggerPowerToysRun("M") ; Trigger when "M" is pressed in the start menu
    $+n::TriggerPowerToysRun("N") ; Trigger when "N" is pressed in the start menu
    $+o::TriggerPowerToysRun("O") ; Trigger when "O" is pressed in the start menu
    $+p::TriggerPowerToysRun("P") ; Trigger when "P" is pressed in the start menu
    $+q::TriggerPowerToysRun("Q") ; Trigger when "Q" is pressed in the start menu
    $+r::TriggerPowerToysRun("R") ; Trigger when "R" is pressed in the start menu
    $+s::TriggerPowerToysRun("S") ; Trigger when "S" is pressed in the start menu
    $+t::TriggerPowerToysRun("T") ; Trigger when "T" is pressed in the start menu
    $+u::TriggerPowerToysRun("U") ; Trigger when "U" is pressed in the start menu
    $+v::TriggerPowerToysRun("V") ; Trigger when "V" is pressed in the start menu
    $+w::TriggerPowerToysRun("W") ; Trigger when "W" is pressed in the start menu
    $+x::TriggerPowerToysRun("X") ; Trigger when "X" is pressed in the start menu
    $+y::TriggerPowerToysRun("Y") ; Trigger when "Y" is pressed in the start menu
    $+z::TriggerPowerToysRun("Z") ; Trigger when "Z" is pressed in the start menu
    $^!ç::TriggerPowerToysRun("{^}") ; Trigger when "Ç" is pressed in the start menu


    ; Trigger when Ctrl+V is pressed in the start menu
    ^v:: 
        TriggerPowerToysRun("") ; Trigger when Ctrl+V is pressed in the start menu
        Send, ^v  ; Send Ctrl+V to paste clipboard content
#If




BufferInput(start:=1) {
    static ih := ""
    if (start) {
        if (!ih) {
            ih := InputHook("L0 I1") ; no limit; ignore SendLevel < 1 (prevents recursion)
            ih.KeyOpt("{All}", "N")
            ih.OnKeyDown := Func("BufferInputOnKeyDown")
        }
        ih.Start()
    } else {
        While g_BufferedKeys.Count()
        {
            Key := g_BufferedKeys.RemoveAt(1) ; pop front
            Send % Format("{vk{:02X}sc{:03X}}", Key.VK, Key.SC)
        }
        ih.Stop()
    }
}

BufferInputOnKeyDown(InputHook, VK, SC) {
    g_BufferedKeys.Push({VK: VK, SC: SC})
}
