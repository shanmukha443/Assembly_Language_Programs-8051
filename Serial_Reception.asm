mov tmod,#20h
mov scon,#50h
mov th1,#0fdh
again:clr a
acall receive
mov p2,a
sjmp again
receive:setb tr1
jnb ri,$
clr ri
mov a,sbuf
ret
end