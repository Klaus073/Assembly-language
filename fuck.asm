[org 0x0100]

jmp start
num1: dw 1,2,3,4,5,6,7,8,9,10
result: dw 0
start:
mov ax,0
mov bx,0
mov cx,0
mov dx,18

;mov ax,[num1+bx]


loop:
      mov bx,cx
      mov ax,[num1+bx]
      add cx,2
      mov bx,dx
      add ax,[num1+bx]
      sub dx,2
      add [result],ax
      cmp dx, 8      
 jne  loop

 mov dx,[result]

mov  ax, 0x4c00
int  0x21 