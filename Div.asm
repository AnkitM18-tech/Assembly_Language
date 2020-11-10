org 0000h
mov a,#35h ; msb1
mov b,#0ah ; msb2
div ab
mov r0,a
mov a,b
swap a
mov r3,#0bh
orl a,r3
mov b,#0ah
div ab
mov r1,a
mov a,b
swap a
mov r3,#07h
orl a,r3
mov b,#0ah
div ab
mov r2,a
mov r4,b
end