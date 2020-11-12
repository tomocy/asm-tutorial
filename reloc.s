.global _start
_start:
    movl $l32, %eax
    movw $l16, %ax
    movb $l8, %al
    jmp ljmp
    movl $l32 + 32, %eax
    mov $60, %rax
    syscall
