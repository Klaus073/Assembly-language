[org 0x0100]

jmp start
num1: db 4
num2 : dw 4
; If the source is a word then it is divided by AX and the result is stored in DX and AX.
start:
mov ax,3
mov bx,[num2]    

div bx

; If the source is a byte then it is divided by AL and the result is stored in AH and AL.
mov ax,0

mov dx,0
mov bx,0

mov ax,8
mov bl,[num1]

div bl







mov  ax, 0x4c00
int  0x21