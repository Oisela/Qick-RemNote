#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird
SendMode Input ; Setzt den Send-Modus auf "Input", um sicherzustellen, dass die Tastatureingaben zuverlässig erkannt werden
SetWorkingDir, %A_ScriptDir% ; Setzt das Arbeitsverzeichnis auf das Verzeichnis des Skripts

; Variablen
DelayIm := 50 ; Globale Variable für den Delay-Wert in Millisekunden
; Hotkeys

; Hotkey für den gewünschten Text
F5:: 
    Clipboard := ""
    Send, ^c
    Send, {Delete}
    Clipboard := "\overbrace{"  clipboard  "}^{\text{}}"
    Send, ^v
    Send, {Left 2}
Return
