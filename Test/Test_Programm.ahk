#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird
SendMode Input ; Setzt den Send-Modus auf "Input", um sicherzustellen, dass die Tastatureingaben zuverlässig erkannt werden
SetWorkingDir, %A_ScriptDir% ; Setzt das Arbeitsverzeichnis auf das Verzeichnis des Skripts

; Variablen
DelayIm := 50 ; Globale Variable für den Delay-Wert in Millisekunden
; Hotkeys

; Hotkey für den gewünschten Text

F5::
    SetKeyDelay, 50
    Send, {Raw}\im 
    Sleep, 200
    Send, {enter}
    Sleep, 200
Return