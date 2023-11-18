; Einstellungen
#IfWinActive, ahk_exe RemNote.exe ; Setzt die Bedingung für die folgenden Hotkeys, dass RemNote.exe aktiv ist
#SingleInstance, Force ; Stellt sicher, dass nur eine Instanz des Skripts ausgeführt wird
SendMode Input ; Setzt den Send-Modus auf "Input", um sicherzustellen, dass die Tastatureingaben zuverlässig erkannt werden
SetWorkingDir, %A_ScriptDir% ; Setzt das Arbeitsverzeichnis auf das Verzeichnis des Skripts

; Variablen
DelayIm := 50 ; Globale Variable für den Delay-Wert in Millisekunden

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

:*:bspp:: ; Beispiel einfügen
    Send, {Enter}
    sleep, 200
    Send, {Tab}
    sleep, 200
    Send, {Raw} /ecd
    sleep, 200
    Send, {Enter}
    Send, {Raw} Beispiel:

return
;autocompletions


:*:m12::\begin{{}pmatrix{}} a & b \end{{}pmatrix{}}{Left 18} 
:*:m21::\begin{{}pmatrix{}} a \\ b \end{{}pmatrix{}}{Left 19} 
:*:m22::\begin{{}pmatrix{}} a & b \\ c & d \end{{}pmatrix{}}{Left 27}
:*:m31::\begin{{}pmatrix{}}+`na & b & c\\+`n\end{{}pmatrix{}}{Left 18} 
:*:m32::\begin{{}pmatrix{}}+`na & b\\+`n0 & 0\\+`n0 & 0\\+`n\end{{}pmatrix{}}{Left 18} 
:*:m23::\begin{{}pmatrix{}}+`na & b & c\\+`nd & e & f\\+`n\end{{}pmatrix{}}{Left 18} 
:*:m33::\begin{{}pmatrix{}}+`na & a & b\\+`nc & d & e\\+`nf & g & h\\+`n\end{{}pmatrix{}}{Left 18} 
:*:m34::\begin{{}pmatrix{}}+`n0 & 0 & 0 & 0\\+`n0 & 0 & 0 & 0\\+`n0 & 0 & 0 & 0\\+`n\end{{}pmatrix{}}{Left 18} 
:*:m43::\begin{{}pmatrix{}}+`n0 & 0 & 0\\+`n0 & 0 & 0\\+`n0 & 0 & 0\\+`n0 & 0 & 0\\+`n\end{{}pmatrix{}}{Left 18} 
:*:m44::\begin{{}pmatrix{}}+`n0 & 0 & 0 & 0\\+`n0 & 0 & 0 & 0\\+`n0 & 0 & 0 & 0\\+`n0 & 0 & 0 & 0\\+`n\end{{}pmatrix{}}{Left 76} 


:*:\fr::\frac{{}{}}{{}{}}{Left 3}
:*:\sq::\sqrt{{}{}}{left}
:*:\ther::\therefore{{}{}}
:*:\te::\text{{}{}}{left}
:*:\ar::\left{[}\begin{{}array{}}{{}l{}} A \\ B \end{{}array{}}\right{]}{Left 24}
:*:\cloze::\colorboxz{{}skyblue{}}{{}{}}{left}^#+!
:*:\all::\forall{{}{}}
:*:\ex::\exist{{}{}}
:*:\ve::\vec{{}{}}{left}
;symbols
::\in::\in{{}{}}
return
:*:\Z::\Zeta{{}{}}
:*:\alp::\alpha{{}{}}
:*:\be::\beta{{}{}}
:*:\ep::\epsilon{{}{}}
:*:\ph::\phi{{}{}}
:*:\Ph::\Phi{{}{}}
:*:\thet::\theta{{}{}}
:*:\de::\delta{{}{}}
:*:\vard::\varDelta{{}{}}
:*:\Si::\Sigma{{}{}}
:*:\la::\lambda{{}{}}
:*:\inf::\infin{{}{}}
;operators
:*:\sum::\sum{{}{}}
:*:\sub::\subset{{}{}}
:*:\pr::\prod{{}{}}
:*:\ca::\cap{{}{}}
:*:\cu::\cup{{}{}}
; :*:\::
; :*:\::
; :*:\::

#IfWinActive ; Deaktiviert den Hotkey-Bereich, wenn das RemNote-Fenster nicht mehr aktiv ist
