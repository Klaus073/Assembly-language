[org 0x0100]

jmp start

Example: dw 47, 72, 31
sum_of_two_digit: dw 0
max_sum_digit: dw 0
divider: dw 10

start:
mov ax,0
mov bx,0
mov cx,0
mov dx,0

mov ax,[Example+bx]
    div [divider] 
    add word[sum_of_two_digit],al
    add word[sum_of_two_digit],dx
    mov [max_sum_digit],ax

loop:
    mov ax,[Example+bx+2]
    div [divider]  
    add dx,al
    cmp [sum_of_two_digit],dx
    jge checker
        mov cx ,ax
        checker:
        add bx,2
cmp bx,6
jne loop




;; Main Function
 ;start:
 ;mov ax,0
 ;mov bx,0
 ;mov dx,0
       
        ;call Odd_Subroutine  ;; Calling the function




mov  ax, 0x4c00
int  0x21