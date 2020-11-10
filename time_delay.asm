org 0000h
main:mov r6,#02d
loop1:acall delay
	  djnz r6,loop1
exit:sjmp exit
delay:mov tmod,#01h ;t0 to mode 1
	  mov th0,#0fch ;th0=fch
	  mov tl0,#066h ;tl0=66h
	  setb tr0 ;start t0
here:jnb tf0,here ;loop here till tf0=1
	 clr tr0 ;stop t0
	 clr tf0 ;clear tf0 flag
	 reti
end

