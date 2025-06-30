org 00h
mov tmod,#20h
mov scon,#50h
mov th1,#0fdh
mov dptr,#msg
back:clr a
movc a,@a+dptr
jz next
acall transmit
inc dptr
sjmp back
next:sjmp next
transmit:setb tr1
mov sbuf,a
jnb ti,$
clr ti
ret
msg:db"welcome",0
end
