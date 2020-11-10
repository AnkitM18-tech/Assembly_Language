org 0000h
mov dptr,#6050h
movx a,@ dptr
mov r0,a
mov dptr,#6052h
movx a,@ dptr
subb a,r0
mov dptr,#6054h
movx @ dptr,a
mov dptr,#6051h
movx a,@ dptr
mov r1,a
mov dptr,#6053h
movx a,@ dptr
subb a,r1
mov dptr,#6055h
movx @ dptr,a
end
