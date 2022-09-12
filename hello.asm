section .text
    global _start

_start:
    mov rax, 1          ; write
    mov rdi, 1          ; STDOUT
    mov rsi, message    ; char* buffer
    mov rdx, size       ; size_t count
    syscall

    mov rax, 60         ; exit
    mov rdi, 0          ; exit code
    syscall

section .data
    message: db "Hello World, from asm!", 10
    size: equ $ - message
