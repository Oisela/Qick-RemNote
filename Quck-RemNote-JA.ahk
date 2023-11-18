; Einstellungen
#IfWinActive, ahk_exe RemNote.exe ; Setzt die Bedingung für die folgenden Hotkeys, dass RemNote.exe aktiv ist
#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird
SendMode Input ; Setzt den Send-Modus auf "Input", um sicherzustellen, dass die Tastatureingaben zuverlässig erkannt werden
SetWorkingDir, %A_ScriptDir% ; Setzt das Arbeitsverzeichnis auf das Verzeichnis des Skripts

; Variablen
DelayIm := 50 ; Globale Variable für den Delay-Wert in Millisekunden

;; Hotkeys





; Autocomplete

:*:\fr::\frac{{}{}}{{}{}}{Left 3}
:*:def,::Definition:

#IfWinActive ; Deaktiviert den Hotkey-Bereich, wenn das RemNote-Fenster nicht mehr aktiv ist
 