[org 0x0100]

jmp start

Array: dw 3, 9, 56, 43, 1, 2, 23
odd_counter: dw 0
even_counter: dw 0


Odd_Subroutine:             ;; function for finding no. of odd number is array by Subroutine method
       mov cx,2     ;divider
        loop_odd:
        xor ax,ax
        xor dx,dx
            mov ax ,[Array+bx]  
            div cx   
            cmp dx ,1
                jne odd
                    add word[odd_counter],1

                odd:
                    add bx,2
    
        cmp bx,14
        jne loop_odd
    
        ret

Even_Subroutine:          ;; function for finding no. of even number is array by Subroutine method
       mov cx,2     ;divider
        loop_even:
         xor ax,ax
        xor dx,dx
            mov ax ,[Array+bx]  
            div cx   
            cmp dx ,1
                je even
                    add word[even_counter],1

                even:
                    add bx,2
    
        cmp bx,14
        jne loop_even
    
        ret





;///////////////////////
;; Main Function
 start:
 mov ax,0
 mov bx,0
 mov dx,0
       
        call Odd_Subroutine  ;; Calling the odd function
 mov ax,0
 mov bx,0
 mov dx,0

        call Even_Subroutine ;; Calling the even function




mov  ax, 0x4c00
int  0x21



