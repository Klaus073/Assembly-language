[org 0x0100]

	mov Al, 06h
	mov Cl, 00h
	mov CL, 00h
	mov DL, 19h
	mov DL, 50h
        int 10h

	mov Ah, 02h
	mov Bl, 00h
	mov Dl, 00h
	mov DL, 01h
        int 10h

	mov si, VUID
	mov Dl, 00h
	mov BL, 17h
npos:
	mov Ah, 02h
	mov BH, 00h
	mov DL, 01h
	int 10h
	add DH, 01h

	mov AH, 09h
	mov Al, [si]
	mov BH, 00h
	mov BL, 17h
	mov CX, 01h
	int 10h
	add si, 01h

	cmp BL, 17h
	jne attr2
	mov BL, 47h
	jmp comp
attr2:
	cmp BL, 47h
	jne attr3 
	mov BL, 20h
	jmp comp
attr3:
	cmp BL, 20h
	jne comp
	mov BL, 17h
comp:	
	cmp DH, [slength]
	jne npos
	
	mov AX, 4c00h
	int 21h
	

VUID:db'mc190405545'
slength: dw 11