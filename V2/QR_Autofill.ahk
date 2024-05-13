#Requires AutoHotkey v2.0
; Autofill Funktionen

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

:*:\\::\\[0.2cm]
:*:\fr::\frac{{}{}}{{}{}}{Left 3}
:*:\sq::\sqrt{{}{}}{left}
:*:\ther::\therefore{{}{}}
:*:\te::\text{{}{}}{left}
:*:\ar::\left{[}\begin{{}array{}}{{}l{}} A \\ B \end{{}array{}}\right{]}{Left 24}
:*:\canc::\cancel{{}}{Left}
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