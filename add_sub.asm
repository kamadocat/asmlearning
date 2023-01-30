section .text
global _start
_start:
    mov rsi, 0x5
    add rsi, 0x2
    sub rsi, 0x4

    mov rax, 60
    xor rdi, rdi
    syscall
