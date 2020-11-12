# gcc -static -no-pie -Tbss=0x800000 displacement.s
.global main
main:
    movb $0, 0x800000
    movb $1, 0x800001
    movb $2, 0x800002
    movb $3, 0x800003

    mov $0x800000, %rax
    mov $0, %r9
    movsxb 1(%rax), %r8
    add %r8, %r9
    movsxb 2(%rax), %r8
    add %r8, %r9
    movsxb 3(%rax), %r8
    add %r8, %r9
    mov %r9, %rax
    ret
