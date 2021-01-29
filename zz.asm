[org 0x0100]

jmp start

Example: dw 47, 72, 31
first:dw 0
second:dw 0
sum1:dw 0
sum2:dw 0
sum_of_two_digit: dw 0
max_sum_digit: dw 0
divider: dw 10
temp: dw 0


;start:

Subroutine_Function:
mov bx,0
mov cx,0
mov dx,0


loop:
    xor ax,ax
    xor dx,dx
    mov ax,word[Example+bx]   ;; now ax ll get the 2nd value in the of array ,, 
   
    div word[divider]           ;; divider
    add word[sum1],ax          
    add word[sum1],dx       
     xor ax,ax
    xor dx,dx
    mov ax,word[Example+bx+2]
    div word[divider] 
    add word[sum2],ax          
    add word[sum2],dx 
    mov cx,[sum2]
    cmp word[sum1],cx
    jg work
    mov si,word[Example+bx+2]
        add bx,2
        work:
        mov si,word[Example+bx]
        add bx,2
         
     
        

   
cmp bx,4                      
jne loop          




; Main Function
 start:
 ;mov ax,0
 ;mov bx,0
 ;mov dx,0
       
        call Subroutine_Function ;; Calling the function




mov  ax, 0x4c00
int  0x21