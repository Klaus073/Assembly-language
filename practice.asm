[org 0x0100]

jmp start
num1:   dw 10,20,30,40,50,60,70,80,90,100
result: dw 0


start:
mov ax,0
;mov cx,10
mov bx,0

loop:
    mov ax,[num1+2]
    add bx,2
    cmp bx,20
    jne loop


mov [result],ax

mov  ax, 0x4c00
int  0x21


