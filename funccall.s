.global main
func3:
    push %rbp
    mov %rsp, %rbp
    add $1, %rax
    pop %rbp
    ret
func2:
    push %rbp
    mov %rsp, %rbp
    call func3
    add $1, %rax
    pop %rbp
    ret
func:
    push %rbp
    mov %rsp, %rbp
    call func2
    add $1, %rax
    pop %rbp
    ret
main:
    mov $0, %rax
    call func
    ret
