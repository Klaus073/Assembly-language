[org 0x0100]

jmp start
sum: dw 0
sum1: dw 0

add2:

pop ax
pop bx
pop cx
add ax,bx
add ax,cx
add word[sum1],ax
ret 


add1:
pop bx
pop ax
add word[sum],bx
add word[sum],ax
push word[sum]
push bx
push ax

call add2
ret 4







start:
mov ax,5
mov bx,4
push ax
push bx
call add1












mov  ax, 0x4c00
int  0x21