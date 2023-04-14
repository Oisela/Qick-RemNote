#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird
SendMode Input ; Setzt den Send-Modus auf "Input", um sicherzustellen, dass die Tastatureingaben zuverlässig erkannt werden
SetWorkingDir, %A_ScriptDir% ; Setzt das Arbeitsverzeichnis auf das Verzeichnis des Skripts

; Variablen
DelayIm := 50 ; Globale Variable für den Delay-Wert in Millisekunden
; Hotkeys

; Hotkey für den gewünschten Text

F5::
    Send, {Raw} [[LaTeX
    SetKeyDelay, 50
    Sleep, 500
    Send, {Enter}
    Sleep, 1000
    Send, {Raw}##
    Sleep, 500
    Send, Extra Detail Card
    Sleep, 500
    Send, {Enter}
    Send, {Raw}: \
    Sleep, 500
    Send, iic
    Sleep, 500
    Send, {Enter}
    Send, \
Return