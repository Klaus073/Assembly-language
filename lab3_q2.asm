[org 0x0100]

jmp start
num1:   dw 1,4,7,3,2,6,4,2,8,4
result1: dw 0


start:
    mov ax,0
    mov cx,10
    mov dx,0
        loop1:
            mov ax,[num1+bx]   ; taking ifrst and comparing with others
            mov bx,0            ;bringing it to start when renters in first loop    
                loop2:
                    cmp ax,[num1+bx+2]      ; comparing the first element to its next element
                    jne dupli
                    mov [result1],ax        ; storing THE REPEATED VALUE into result1 IT WILL STORE THE VALUE UNTILL NEXT VALUE CAME
                    
                        dupli:
                            add bx,2        ; ELSE CONDITION( if condition does not satisfy then move to next element
                            cmp bx,18              ; setting limit for loop2 to end itslef
                        jne loop2                    ; if not then play the loop again
             mov bx,0                        ;THIS
             add dx,2                            ;THIS   
             mov bx,dx                               ;AND THIS LINES I WROTE JUST BECAUSE TO MAKE POSSILE THE ITERATION OF THE FIRST LOOP WHICH IS LOOP1
    
        sub cx,1                ;setting limit for loop1 to end itslef
        jnz loop1



mov  ax, 0x4c00
int  0x21