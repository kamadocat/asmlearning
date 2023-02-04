section .data
yes_message: db 'rax is less than 42', 10
no_message: db 'rax is not less than 42', 10
section .text
global _start
_start:
    mov rax, 44
    cmp rax, 42
    jl yes
    jmp ex
yes:
    ; print yes message
    mov rax, 1
    mov rdi, 1
    mov rsi, yes_message
    mov rdx, 20
    syscall
    jmp exit
ex:
    ; print no message
    mov rax, 1
    mov rdi, 1
    mov rsi, no_message
    mov rdx, 24
    syscall
    jmp exit
exit:
    mov rax, 60
    xor rdi, rdi
    syscall