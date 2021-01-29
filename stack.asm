[org 0x0100]

jmp start
sum: dw 0
sum1: dw 0

add2:
mov bp,sp
mov cx,[bp+2]

add cx,ax
add cx,bx
pop word[bp+2]

ret 


add1:

push bp
mov bp,sp
mov ax,[bp+4]
mov bx,[bp+6]
add word[sum],bx
add word[sum],ax
push word[sum]
call add2
pop bp
ret 4

start:

push 5
push 4
call add1


mov  ax, 0x4c00
int  0x21