SECTION .DATA
happ: dq 0
num: dq 123
num2: dq 456
num3: dq 10
num4: dq 0
num5: dq 4



SECTION .TEXT
    GLOBAL _basic_encrypt
    GLOBAL _basic_decrypt
    GLOBAL _basic_encrypt_char
    GLOBAL _basic_decrypt_char
  
    GLOBAL hard_enc
    GLOBAL hard_dec
    

_basic_encrypt:
   
    mov rax,rdi
    add rax, [num]
    add rax,[num2]
    ret

_basic_decrypt:
   
    mov rax,rdi 
    sub rax, [num]
    sub rax,[num2]
    ret
hard_enc:
    mov rax,rdi
    add rax,[num]
    mov rcx,0
    shift:
    add rcx,1

    shl rax,1
    rol rax,1
    rcl rax,1

    rol rax,1
    shl rax,1
    rcl rax,1

    cmp rcx,3
    
    jne shift
    ret
hard_dec:
    mov rax,rdi
    mov rcx,0
    shif:
    add rcx,1

   
    rcr rax,1
    ror rax,1
    shr rax,1
    
    ror rax,1
    rcr rax,1
    shr rax,1
    

    cmp rcx,3
    jne shif
    sub rax,[num]
    ret

_basic_encrypt_char:
     mov rax,rdi 
     mov rbx,[num5]
  
    shr rbx,1
    shl rbx,1
    rol rbx,1
    ror rbx,1
    

    add rax,rbx
   ret

_basic_decrypt_char:
     mov rax,rdi ;[rbp+16]
     mov rbx, [num5]
 
 
    shr rbx,1
    shl rbx,1
    rol rbx,1
    ror rbx,1
    sub rax,rbx
    ret
  