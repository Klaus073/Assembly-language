[org 0x0100]


    mov ax,0 ; setting to 0

 
Loop:       
    add ax,[num1]

    sub ax,400   ;comparing / or checking the desire condition
    jnz Loop        ; checking flag if set or not then play the loop again

mov  ax, 0x4c00
int  0x21

num1: dw 20


   

