[org 0x0100]

jmp start
num1:   dw 2, 3, 6, 4, 8, 67, 32
result1: dw 0
result2: dw 0

start:
xor ax,ax
mov bx,0
mov cx,0

                            ;; EVEN
loop:
    mov ax,[num1+bx]
    
    Test ax,1
    jnz even   ;if
        add cx,1  
        mov cx,[num+bx]
                      
    even:       ; else
       add bx,2
       
cmp bx,14
jnz loop

mov [result1],cx
mov ax,0
mov bx,0
mov dx,0

                            ;; ODD
loop2:
    mov ax,[num1+bx]
    
    Test ax,1
    jz odd1
         
       add dx,1
    odd1:
        add bx,2
       
cmp bx,14
jne loop2

mov [result2],dx

mov  ax, 0x4c00
int  0x21