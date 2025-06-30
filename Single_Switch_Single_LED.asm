org 00h
mov p2,#00h
again:clr p2.0
back:jnb p1.0,glow
sjmp again
glow:setb p2.0
sjmp back
end
