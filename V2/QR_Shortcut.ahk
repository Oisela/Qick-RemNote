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
    Send "{Enter}"
    Sleep 100
    Send "{Tab}"
    Sleep 100
    Send "/ecd"
    Sleep 100
    Send "{Enter}"
}

; Miltiplechoice Card
^+2::{
    
    Send "{Enter}"
    Sleep 100
    Send "{Enter}"
    Sleep 100
    Send "{Enter}"
    Sleep 100
    Send "{Enter}"
    Sleep 100
    Send "{Enter}"
    Sleep 100
    Send "{Up}"
    Sleep 100
    Send "{Up}"
    Sleep 100
    Send "{Up}"
    Sleep 100
    Send "{Up}"
    Sleep 100
    Send "{Up}"
    Sleep 100
    Send "{Ctrl Down} + v"
    Sleep 200
    Send "{Ctrl Up}"
    Sleep 200
    Send "{Down}"
    Sleep 200
    Send "{Shift Down}"
    Sleep 200
    Send "{Down 7}"
    Sleep 200
    Send "{Shift Up}"
    Sleep 200
    Send "{Del}"
    Sleep 200
    Send "{Up}"
    Sleep 200
    Send "\imc"
    Sleep 200
    Send "{Enter}"
    Sleep 200
    Send "{Down}"
    Sleep 200
    Send "{Ctrl Down} + v"
    Sleep 200
    Send "{Ctrl Down} + a"
    Send "{Ctrl Up}"
    Sleep 200
    Send "{Del}"
    Sleep 200
    Send "{Del}"


}

