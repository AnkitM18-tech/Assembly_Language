org 0000h
mov dptr,#3050h
movx a,@ dptr
mov r0,a
mov dptr,#3052h
movx a,@ dptr
clr c
subb a,r0
mov dptr,#3054h
movx a,@ dptr
mov r1,a
mov dptr,#3053h
movx a,@ dptr
subb a,r1
mov dptr,#3055h
movx @ dptr,a
mov r3,#00h
jnc nxt
inc r3
nxt:mov a,r3
	mov dptr,#3056h
	movx @ dptr,a
end
