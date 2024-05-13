#Requires AutoHotkey v2.0
DelayIm := 100 ; Globale Variable für den Delay-Wert in Millisekunden
HotIfWinActive "RemNote.exe" ; Setzt die Bedingung für die folgenden Hotkeys, dass RemNote.exe aktiv ist

; Autofill Dateien 
#Include QR_Autofill.ahk


; Short Cuts
#Include QR_Shortcut.ahk

