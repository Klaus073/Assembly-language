[org 0x0100]

jmp start
num1:   dw 2, 3, 6, 5, 8, 67, 32
carry: dw 0

start:
mov ax,0
mov bx,0

loop:               ;------------for odd index,,,,and ll be saved in cx register
mov cx,0
mov dx,0
mov word[carry],0
mov ax,[num1+bx]

    ; mov ax,[num1]
mov dx,1
mov cx,0
mov cx ,[num1+bx]  

and  ax,dx ;x & y
mov [carry],ax ;carry = x & y
xor cx ,dx  ;x = x ^ y;
shl [carry],1  ;carry << 1
mov dx,[carry]       ;y = carry << 1
add cx,dx

add bx,4

cmp bx,16
jnz loop



mov ax,0
mov bx,0


loop1:
mov cx,0
mov dx,0
mov word[carry],0
mov ax,[num1+bx+2]
test ax,1   
jz even
    
        xor ax,1

even:
add bx,4

cmp bx,12   
jnz loop1

mov  ax, 0x4c00
int  0x21