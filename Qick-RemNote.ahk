; Einstellungen
#IfWinActive, ahk_exe RemNote.exe ; Setzt die Bedingung für die folgenden Hotkeys, dass RemNote.exe aktiv ist
#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird
SendMode Input ; Setzt den Send-Modus auf "Input", um sicherzustellen, dass die Tastatureingaben zuverlässig erkannt werden
SetWorkingDir, %A_ScriptDir% ; Setzt das Arbeitsverzeichnis auf das Verzeichnis des Skripts

; Variablen
DelayIm := 50 ; Globale Variable für den Delay-Wert in Millisekunden

;; Hotkeys

; Latex


+F2:: ; Nur bei Block mäöglich
    Send, {Raw}\quad\textcolor{green}{\text{| }} ; Fügt das Wort "Automatisierung" ein {Raw} wird für rohenimput benötigt
    SendInput, {Left 2} ; Positioniert den Cursor 7 Zeichen nach links, um nach "green" zu kommen
return

+F3:: ; Nur bei Block mäöglich
    Send, {Raw}\tag*{\textcolor{green}{| }} ; Fügt das Wort "Automatisierung" ein {Raw} wird für rohenimput benötigt
    SendInput, {Left 2} ; Positioniert den Cursor 7 Zeichen nach links, um nach "green" zu kommen
return

+F1:: ; Latex
    SetKeyDelay, 50
    Send, {Raw}\im 
    Sleep, 200
    Send, {enter}
    Sleep, 200
return

#IfWinActive ; Deaktiviert den Hotkey-Bereich, wenn das RemNote-Fenster nicht mehr aktiv ist
