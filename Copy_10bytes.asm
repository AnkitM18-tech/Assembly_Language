org 0000h
mov r0,#30h
mov r1,#10
mov dptr,#400h
nxt: movx a,@ dptr
     mov @ r0,a
	 inc dptr
	 inc r0
djnz r1,nxt
end