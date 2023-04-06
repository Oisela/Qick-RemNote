; Einstellungen
#IfWinActive, ahk_exe RemNote.exe ; Setzt die Bedingung für die folgenden Hotkeys, dass RemNote.exe aktiv ist

#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird
SendMode Input ; Setzt den Send-Modus auf "Input", um sicherzustellen, dass die Tastatureingaben zuverlässig erkannt werden
SetWorkingDir, %A_ScriptDir% ; Setzt das Arbeitsverzeichnis auf das Verzeichnis des Skripts

; Variablen
DelayIm := 50 ; Globale Variable für den Delay-Wert in Millisekunden

; Hotkeys

; Hotkey für den gewünschten Text
3::
    SendInput, \tag*{\textcolor{green}{}} ; Fügt den Text mit der gewünschten Formatierung ein
    SendInput, {Left 7} ; Positioniert den Cursor 7 Zeichen nach links, um nach "green" zu kommen
return

#IfWinActive ; Deaktiviert den Hotkey-Bereich, wenn das RemNote-Fenster nicht mehr aktiv ist
