[org 0x0100]

jmp start
num1:  dw 0x0004
result: dw 0


start:
mov al,[num1]
mov cx,0
mov dx,0

loop:
    shr al,1
        mov [result],al
        add dx,1

      cmp al,0
      jnz loop

      mov al,[num1]

loop1:
    shl al,1
       
        add cx,1
      
      cmp al,0
      jnz loop1

  cmp dx,cx
  jge decide
    mov [result],dx
    
    decide:
      mov [result],cx

    

mov  ax, 0x4c00
int  0x21