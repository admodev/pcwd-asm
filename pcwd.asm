global _start

section .data

buffer:
times 256 db 0

newline:
db 0xA

section .text

_start:
mov rax, 79
mov rdi, buffer
mov rsi, 256
syscall

mov rax, 1
mov rdi, 1
mov rsi, buffer
mov rdx, 256
syscall

; returns a newline and finish execution.
mov rax, 1
mov rdi, 1
mov rsi, newline
mov rdx, 1
syscall

mov rax, 60
mov rdi, 0
syscall

jmp $
