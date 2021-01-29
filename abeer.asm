[org 0x0100]



mov bx,0
mov cx,0;
mov dx,0
mov al,[num1]
 

loop1:

    loop2:
        mov dl,[num1+bx]
        add cl,1
        CMP dl,al
        JE counting
        add bx,2
        CMP cl,15
        JNE loop2
        


    body1:
        mov bx,0
        add bx,2
        mov al,[num1+bx]
        mov bx,0
        JMP body2
    body2:
        mov cl,1
        CMP cl,15
        JNE loop1

mov ch,ah

mov bx,0
mov cl,0
mov dx,0
mov al,[num1]
l1:
    l2:
        mov dl,[num1+bx]
        add cl,1
        CMP dl,al
        JE check1
        add bx,2
        CMP cl,15
        JNE l2
        
    b1:
        mov bx,0
        add bx,2
        mov al,[num1+bx]
        mov bx,0
        JMP b2
    b2:
        mov cl,1
        CMP cl,15
        JNE l1
    
    mov ch, al
mov ax, 0x4c00
int 0x21
num1: dw 1,2,3,4,5,3,5,3,5,0,9,5,7,5,5
mov ah,0
finMax: dw 0

counting:
    add dh,1
    CMP dh,ah
    JG check
    

check:
    mov ah,dh
    add bx,2
    JMP loop2


check1:
     add dh,1
    CMP dh,ch
    JE check2

check2:
    mov ch,al
    add bx,2
    JMP l2