.global main
main:
    mov $10, %rcx
    mov $0, %rax
sum:
    add %rcx, %rax
    sub $1, %rcx
    jnz sum
    ret
