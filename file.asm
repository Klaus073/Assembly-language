;VUID: MC190405545

[org 0x0100]
jmp start

	first: dw 5
	

start:
	xor ax, ax
	xor bx, bx
	mov cx,0
	mov dx,0
	mov ax,[first]
	mov bx,[first]
	mov cx,[first]
	loop:
		dec bx
		mul bx
		sub cx,1
		cmp cx,1
		 jnz loop
mov ax,0x4c00
int 0x21

