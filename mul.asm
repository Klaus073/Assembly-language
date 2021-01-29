[org 0x0100]

jmp start
num1: db 5
num2 : dw 100
; If the source is a word then it is multiplied by AX and the result is stored in DX and AX.
start:
mov ax,1000
mov bx,[num2]    

mul bx

; If the source is a byte then it is multiplied by AL and the result is stored in AH and AL.
mov ax,0
mov bx,0

mov ax,100
mov bl,[num1]

mul bx







mov  ax, 0x4c00
int  0x21