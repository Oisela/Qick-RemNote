; Einstellungen
#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird

; Variablen
DelayIm := 50 ; Globale Variable für den Delay-Wert in Millisekunden

; Hotkeys

; Hotkey für den gewünschten Text
F1:: ; ohne Latex
    Send, ^s
    Sleep, 50
    Run, "C:\Users\aless\OneDrive\Dokumente\GitHub\Qick-RemNote\Test\Test_Programm.ahk"
    WinActivate, ahk_exe RemNote.exe ; Ersetzen Sie "Fenstertitel" mit dem Titel des Fensters, das Sie in den Vordergrund bringen möchten
    Sleep, 500
    Send, {F5}
return

F3:: ; Mit Latex
    Send, ^s
    Sleep, 50
    Run, "C:\Users\aless\OneDrive\Dokumente\GitHub\Qick-RemNote\Test\Test_Programm.ahk"
    WinActivate, ahk_exe RemNote.exe ; Ersetzen Sie "Fenstertitel" mit dem Titel des Fensters, das Sie in den Vordergrund bringen möchten
    Sleep, 500
    Send, {Raw}\im 
    Sleep, 100
    Send, {enter}
    Sleep, 100
    Send, {F5}
return   

#IfWinActive, ahk_exe RemNote.exe ; Setzt die Bedingung für die folgenden Hotkeys, dass RemNote.exe aktiv ist
F2::
    Send, ^a
    Send, {del}
    WinMinimize, A 
return
F4::
    Send, ^a
    Send, {del}
    Send, {del}
    WinMinimize, A 
return

#IfWinActive ; Deaktiviert den Hotkey-Bereich, wenn das RemNote-Fenster nicht mehr aktiv ist