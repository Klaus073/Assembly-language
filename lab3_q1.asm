;Let’s say you have an array of 10 elements. Consider the first five elements and find the
maximum integer from them. Then consider the last five elements and find the minimum integer
from them. Add up the maximum and minimum integer and output the result.

[org 0x0100]

jmp start
num1:   dw 1,4,7,3,2,6,4,2,8,4
result1: dw 0
result2: dw 0
finalresult: dw 0

start:
mov ax,0
mov cx,4
mov bx,0
mov ax,[num1]           ; fixing the first value for compare;
    loop:
        cmp ax,[num1+bx]

        jge add            ; conditional jump if the value is greater
            mov ax,[num1+bx]     ;comparing 1st value to other         

        add:
            add bx,2       ; moving to next element for compare
            sub cx,1            ; irtrator counter
        jne loop  

mov [result1],ax           ;puttuin the the max value into other place to store the max value

     mov cx,4
     mov bx,10                  ;placing the fix point to next 5th element
     mov ax,[num1+10]              ; fixing the first value for compare;
        loop2:
            cmp ax,[num1+bx]
        jbe add2
            mov ax,[num1+bx]
        add2:
            add bx,2
            sub cx,1
        jne loop2

mov [result2],ax

mov ax,[result1]    ; procedure to store the 2 two max and min values then add them and and store it into toher location
add ax,[result2]
mov [finalresult],ax

mov  ax, 0x4c00
int  0x21
