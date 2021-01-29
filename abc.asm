SECTION .DATA
happ: dq 0
num: dq 123
num2: dq 456
num3: dq 10



SECTION .TEXT
    GLOBAL _basic_encrypt
    GLOBAL _basic_decrypt
    GLOBAL _basic_encrypt_char
    GLOBAL _basic_decrypt_char
    GLOBAL _mid_encrypt
    GLOBAL _mid_decrypt
    GLOBAL hard_enc
    GLOBAL hard_dec
    

_basic_encrypt:
   
    mov rax,rdi ;[rbp+16]
  mov rbx,10
    div rbx
    
  
    ret