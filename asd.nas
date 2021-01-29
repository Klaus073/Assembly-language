[org 0x0100]

jmp start
num1:   dw 2, 3, 6, 4, 8, 67, 32
carry: dw 0

start:
mov ax,0
mov bx,0


loop:
mov cx,0
mov dx,0
mov word[carry],0
mov ax,[num1+bx]
test ax,1
jnz even
    ; mov ax,[num1]
mov dx,1
mov cx,0
mov cx ,[num1+bx]  

and  ax,dx ;x & y
mov [carry],ax ;carry = x & y
xor cx ,dx  ;x = x ^ y;
shl [carry],1  ;carry << 1
mov dx,[carry]       ;y = carry << 1
or cx,dx
even:
add bx,4

cmp bx,16
jnz loop















mov  ax, 0x4c00
int  0x21