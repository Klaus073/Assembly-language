[org 0x0100]

mov ax,4
mov cx,4

loop:
        mul ax
        sub ax,1
        sub cx,1
        jnz loop






mov  ax, 0x4c00
int  0x21 