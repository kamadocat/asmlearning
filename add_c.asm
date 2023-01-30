section .text
global _start
_start:
    mov rsi, 0xffffffff
    add rsi, 0xffffffff

    mov rax, 60
    xor rdi, rdi
    syscall
