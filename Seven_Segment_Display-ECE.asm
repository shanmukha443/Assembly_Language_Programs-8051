org 00h
mov p0,#00h
back:setb p3.5
mov p0,#086h
acall delay
clr p3.5
setb p3.4
mov p0,#0c6h
acall delay
clr p3.4
setb p3.3
mov p0,#86h
acall delay
clr p3.3
sjmp back
delay:mov r3,#0ffh
repeat:mov r4,#0ffh
djnz r4,$
djnz r3,repeat
ret 
end