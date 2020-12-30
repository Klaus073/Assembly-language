SECTION .DATA
happ: dq 0
basic_first: dq 123
basic_last: dq 456
SECTION .TEXT
    GLOBAL _basic_encrypt
    GLOBAL _basic_decrypt

_basic_encrypt:
   
    mov rax,rdi ;[rbp+16]
  
    add rax, [basic_first]
    add rax,[basic_last]
  
    ret

    _basic_decrypt:
   
    mov rax,rdi ;[rbp+16]
  
    sub rax, [basic_first]
    sub rax,[basic_last]
  
    ret