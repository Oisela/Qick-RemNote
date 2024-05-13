; Einstellungen
;#IfWinActive, ahk_exe RemNote.exe ; Setzt die Bedingung für die folgenden Hotkeys, dass RemNote.exe aktiv ist
#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird
SendMode Input ; Setzt den Send-Modus auf "Input", um sicherzustellen, dass die Tastatureingaben zuverlässig erkannt werden
SetWorkingDir, %A_ScriptDir% ; Setzt das Arbeitsverzeichnis auf das Verzeichnis des Skripts
#Requires AutoHotkey v2.0
; Variablen
DelayIm := 100 ; Globale Variable für den Delay-Wert in Millisekunden

;; Hotkeys

; Latex


+F2:: ; Kommentar 
    Send, {Raw}\quad\textcolor{green}{\text{| }} ; Fügt das Wort "Automatisierung" ein {Raw} wird für rohenimput benötigt
    SendInput, {Left 2} ; Positioniert den Cursor 7 Zeichen nach links, um nach "green" zu kommen
return

+F3:: ; Nur bei Block möglich
    Send, {Raw}\tag*{\textcolor{green}{| }} ; Fügt das Wort "Automatisierung" ein {Raw} wird für rohenimput benötigt
    SendInput, {Left 2} ; Positioniert den Cursor 7 Zeichen nach links, um nach "green" zu kommen
return

+F1:: ; Latex input
    Send, $$ {Left}   
    Send, {Left}
return

+F4:: ; Latex
    Send, {Raw} [[Latex
    SetKeyDelay, 50
    Send, {Enter}
return


+F5:: ; Vektor erstellen
    clipboard := "" ; Leeren des clipboard
    Send, ^c
    ClipWait
    Send, {Delete}
    clipboard := "$\vec{"  clipboard  "}$"
    Send, ^v
Return
;autocompletions

:*:bspp:: ; Beispiel einfügen
    Send, {Enter}
    sleep, 200
    Send, {Tab}
    sleep, 200
    Send, {Raw} /ecd
    sleep, 200
    Send, {Enter}
    

return

;Babe einfach weitere hinzufügen 



#IfWinActive ; Deaktiviert den Hotkey-Bereich, wenn das RemNote-Fenster nicht mehr aktiv ist
