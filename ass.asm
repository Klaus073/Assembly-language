[org 0x0100]

jmp start

Example: dw 47, 79, 31

sum_of_two_digit: dw 0

divider: dw 10





Subroutine_Function:
mov ax,0
mov bx,0
mov cx,0
mov dx,0

    mov ax,[Example+bx]     ;; static for 1st value of the array ;; we ll store first value sum to compare with other sums..
   
    div word[divider]       ;; it ll divide every coming value with 10
    add dx,ax  ;; it ll add the quotiont in label e.g 47-> 0+4=4
    add word[sum_of_two_digit],dx ;; it ll add the remainder in the previous same label e.g 47-> 4+7=11
    

loop:
    xor ax,ax
    xor dx,dx
    xor cx,cx
    mov ax,word[Example+bx+2]   ;; now ax ll get the 2nd value in the of array ,, 
  
    div word[divider]           ;; divider
    add dx,ax           ;;  e.g 47-> 0+4=4
   
    mov cx,dx          ;; it ll put the value of ax e.g 47 in the cx
    
    cmp cx,[sum_of_two_digit]    ;; here we ll compare the the sum of 1st value of array with summ 0f 2nd val of array
    jng greater  
     mov si,word[Example+bx+2]
            mov word[sum_of_two_digit],cx
         
            greater:
            mov si,word[Example+bx]
            add bx,2
cmp bx,4                        ;; chechks end loop condition
jne loop            ;; loop if
mov  ax, 0x4c00
int  0x21




 start:
 
        call Subroutine_Function ;; Calling the function




mov  ax, 0x4c00
int  0x21