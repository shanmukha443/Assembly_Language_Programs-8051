org 00h
again:mov p2,#0aah
acall delay
mov p2,#55h
acall delay
sjmp again
delay:mov r3,#0ffh
repeat:mov r4,#0ffh
djnz r4,$
djnz r3,repeat
ret
end