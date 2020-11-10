org 0000h
mov r1,30h
mov r0,31h
mov r3,32h
mov r2,33h
mov b,#00h

div1:
inc b
mov a,r2
rlc a
mov r2,a
mov a,r3
rlc a
mov r3,a
jnc div1

div2:
mov a,r3
rrc a
mov r3,a
mov a,r2
rrc a
mov r2,a
clr c
mov 07h,r1
mov 06h,r0
mov a,r0
subb a,r2
mov r0,a
mov a,r1
subb a,r3
mov r1,a
jnc div3
jz div3
mov r1,07h
mov r0,06h

div3:
cpl c
mov a,r4
rlc a
mov r4,a
mov a,r5
rlc a
mov r5,a
djnz b,div2
mov r3,05h
mov r2,04h
ret

end