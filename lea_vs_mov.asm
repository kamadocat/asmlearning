section .data
codes:
    db '0123456789ABCDEF'

section .text
global _start
_start:
    mov rsi, codes

    mov rsi, [codes]

    lea rsi, [codes]

    mov rax, 0x08
    mov rsi, [codes + rax]

    lea rsi, [codes + rax]

    mov rax, 60
    xor rdi, rdi
    syscall
