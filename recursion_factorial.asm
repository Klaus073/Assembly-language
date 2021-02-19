[org 0x0100]
jmp main
num1 dw 5
fac:
    push bp
    mov bp,sp
    mov bx,[bp+4]
    cmp bx,1
jne call
    pop bp
    ret 2
call:
    dec bx
    push bx
    call fac
    mov ax,[bp+4]
    mul bx
    mov bx,ax

    pop bp
    ret 2

main:
    mov ax,[num1]
    push ax
    call fac

mov ah, 0x01
int 0x21
