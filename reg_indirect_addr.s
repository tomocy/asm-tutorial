# gcc -static -no-pie -Tbss=0x800000 reg_indirect_addr.s
.global main
main:
    mov $0x800000, %rax
    movq $123, (%rax)
    mov (%rax), %r8
    mov (%rax), %rax
    add %r8, %rax
    ret
