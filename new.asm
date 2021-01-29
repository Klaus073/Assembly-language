SECTION .DATA
happ: dq 0
SECTION .TEXT
    GLOBAL _assemblySum

_assemblySum:
    ;push rbp
   ; mov rbp, rsp
    mov rax,rdi ;[rbp+16]
    mov rbx,rsi ;[rbp+24]
    add rax, rbx
   ; mov qword[happ],rdi
    add rax,[happ]
    ;pop rbp
    ret