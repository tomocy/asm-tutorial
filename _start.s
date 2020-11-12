# as _start.s -o _start.o && ld _start.o
.global _start
_start:
    call main
    mov $60, %rax
    syscall
main:
    ret
