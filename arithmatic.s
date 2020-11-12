.global main
main:
    mov $1, %rax
    mov $2, %r8
    add %r8, %rax
    
    mov $2, %r8
    sub %r8, %rax

    add $2, %rax
    imul %r8, %rax
