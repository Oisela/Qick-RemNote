#Requires AutoHotkey v2.0

; Wir verwenden heir ctrl + shit + nummer ^+

+F2::{
    Send "{Raw}\quad\textcolor{green}{\text{| }}"
    SendInput "{Left 2}" ; Positioniert den Cursor 7 Zeichen nach links, um nach "green" zu kommen
}


+F3::{
    Send "{Raw}\tag*{\textcolor{green}{| }}" ; Fügt das Wort "Automatisierung" ein {Raw} wird für rohenimput benötigt
    SendInput "{Left 2}" ; Positioniert den Cursor 7 Zeichen nach links, um nach "green" zu kommen

} ; Nur bei Block möglich


; Extra Detail Card
^+1::{
    Send "/ecd"
    Send "{Enter}"
}